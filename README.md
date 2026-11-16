# UART_GDSII

직접 설계한 UART(`uart_top`)를 GPDK045(45nm) 라이브러리로 RTL부터 GDSII까지 구현한 실습 저장소다.
Cadence 툴(Xcelium, Genus, Conformal LEC, Innovus, Tempus)을 사용하며, 교재 『Cadence로 배우는 Arm 기반 SoC 설계』 2권(Digital Back-End)의 `SoC_make_G45` 흐름을 따른다.
현재 PnR은 패드(IO 링)를 포함한 단독 UART 칩을 대상으로 한다.

## 전체 진행 상황

| 순서 | 단계 | 날짜 | 결과 | 상태 |
|:---:|---|---|---|:---:|
| 1 | RTL 설계 | | `uart_top` = 송신기 + 수신기 + FIFO(16) + 보레이트 생성기(100MHz → 115200bps) | 완료 |
| 2 | 기능 시뮬레이션 | | `hello.hex` 28바이트 송수신 PASS | 완료 |
| 3 | 합성 (Genus, 패드 포함) | 2026-11-12 | SS·FF 두 조건 모두 setup 위반 0 (SS slack +7.080ns) | 완료 |
| 4 | LEC (RTL ↔ 합성 netlist) | 2026-11-12 | 비교점 356개 모두 Equivalent, PASS | 완료 |
| 5 | 전원 패드 삽입 (add_pad) | 2026-11-14 | 합성 netlist에 전원 패드 16개 추가 | 완료 |
| 6 | PnR 0~3단계 (Init ~ CTS) | 2026-11-13 ~ 16 | 다이 1748×1748㎛, 연결 점검 0, hold 위반 0 | 완료 |
| 7 | PnR 4단계 (Route·전력) | 2026-11-16 | max_tran 0, setup +6.103ns, hold +0.003ns, DRC 0 | 완료 |
| 8 | PnR 5단계 (Chip Finish) | 2026-11-16 | GDS·netlist·SDC·SDF 출력 | 완료 |
| 9 | Post-Layout LEC (합성 netlist ↔ PnR netlist) | | 교재 2권 9장 | 대기 |
| 10 | Tempus STA · ECO 파일 생성 | | 교재 2권 10장 | 대기 |
| 11 | PnR 6단계 (ECO 반영) | | 교재 2권 11장 | 대기 |

## 1. 합성 (SYN) — 패드를 포함한 합성

- 스크립트: `SYN/uart_run_synthesis` → `SYN/script/uart_45nm_mmmc.tcl` (`TOP/SYN`에서 실행)
- RTL을 `-define USE_IO_PAD`로 읽는다. `uart_top.v`의 `ifdef USE_IO_PAD` 블록이 RX 입력 패드(`PADDI u_pad_uart_rx`)와 TX 출력 패드(`PADDO u_pad_uart_tx`)를 만든다.
- MMMC 구성 (`SYN/cons/uart_top.mmmc.view`, 제약 `SYN/cons/uart_top_mmmc.sdc`)

  | 분석 뷰 | 라이브러리 | 조건 | 용도 |
  |---|---|---|---|
  | `UART_SS_WORST` | slow + pads_SS | 0.9V, 125℃ | setup |
  | `UART_FF_BEST` | fast + pads_FF | 1.1V, 0℃ | setup, hold |

- 클록: `UART_CLK` 주기 10ns (100MHz)
- 결과 (`SYN/uart_report/19_uart_top_SYN_qor.rpt`)

  | 항목 | 값 |
  |---|---|
  | Setup slack (SS_WORST / FF_BEST) | +7.080ns / +9.296ns, 위반 0 |
  | 셀 수 | 832개 (순차 339, 조합 493) |
  | 셀 면적 | 32,651.6㎛² (RX·TX 패드 2개 28,800㎛² + 로직 3,851.6㎛²) |

- 출력: `SYN/uart_mapped/uart_top_syn_final.v` (PnR 입력 netlist), `uart_top_ss_syn_final.sdc`, `uart_top_ff_syn_final.sdc`, SDF
- 전원 패드 삽입: 교재의 add_pad 방식을 따라 `PNR/uart_pad/uart_add_pad`의 16줄(PADVDD·PADVSS·PADVDDIOR·PADVSSIOR 각 4개)을 합성 netlist에 넣었다. 전원 패드는 논리 연결이 없으므로 합성과 LEC를 다시 실행하지 않았다.

## 2. LEC — RTL ↔ 합성 netlist

- 스크립트: `EC/uart_script.tcl` (Conformal LEC)
- Golden: RTL 5개 파일 (`-define USE_IO_PAD`), Revised: `SYN/uart_mapped/uart_top_syn_final.v`
- 라이브러리: `slow_vdd1v0_basicCells.v`, `fast_vdd1v0_basicCells.v`, `pads_SS_s1vg.v`
- 결과 (2026-11-12, 전원 패드 삽입 전 netlist): **PASS**

  | 구분 | Golden | Revised | 비교 결과 |
  |---|:---:|:---:|---|
  | 입력 (PI) | 13 | 13 | 모두 대응 |
  | 출력 (PO) | 17 | 17 | Equivalent 17 |
  | 플립플롭 (DFF) | 339 | 339 | Equivalent 339 |
  | 합계 | | | Equivalent 356 / 356 |

## 3. PnR (Innovus) — 패드를 포함한 단독 칩

스크립트는 `PNR/uart_pad/`에 있고, Innovus는 `TOP/PNR`에서 legacy 모드로 실행한다 (`-stylus`를 쓰지 않는 이유는 `PNR/README` 참고).

### 칩 구성

- 다이 1748×1748㎛, 코어 여백 640㎛ (`floorPlan -coreMarginsBy die -d 1748 1748 640 640 640 640`)
- 전원 패드 16개: 네 변에 PADVDDIOR·PADVDD·PADVSS·PADVSSIOR를 1개씩 둔다.
- 시그널 패드 30개
  - RX·TX 2개: 합성 netlist에 포함되어 있다.
  - 나머지 포트 28개 (입력 PADDI 12개, 출력 PADDO 16개): 4단계에서 라우팅 전에 ECO로 추가한다. 입력 패드는 코어에 가까운 변의 가운데 자리에, 출력 패드는 모서리 쪽 자리에 둔다.
- 클록 루트 버퍼 1개: 클록 패드와 클록 트리 사이가 약 630㎛이므로 코어 가장자리에 CLKBUFX8(`u_clk_pad_buf`)을 둔다.

### 단계별 진행

| 단계 | 스크립트 | 교재 2권 | 결과 |
|:---:|---|:---:|---|
| 0 | `uart_pad_0_InitDesign.tcl` | 3장 | 패드·코어 배치 완료, 경계·격자 오류 0 |
| 1 | `uart_pad_1_PowerPlan.tcl` | 4장 | 전원망 완료, 연결 점검 40건 → 0 |
| 2 | `uart_pad_2_PlaceOpt.tcl` | 5장 | 배치·최적화 정상 |
| 3 | `uart_pad_3_PostCTSopt.tcl` | 6장 | hold·removal 위반 211 → 0 (WNS +0.002ns), setup +7.399ns |
| 4 | `uart_pad_4_RouteDesign_PowerAnalysis.tcl` | 7장 | max_tran 22넷 → 0, setup +6.103ns, hold +0.003ns, DRC 0, 연결 점검 0 |
| 5 | `uart_pad_5_ChipFinish.tcl` | 8장 | filler 삽입, GDS·netlist·SDC·SDF 출력 |
| - | `uart_pad_tempus.tcl` | 10장 | 미실행 |
| 6 | `uart_pad_6_ECO.tcl` | 11장 | 미실행 (Tempus가 만드는 `uart_pad/innovus.eco` 필요) |

### 단계별 문제와 해결

**0단계 — Init Design**
1. 문제: PADVDD·PADVSS는 수정 LEF(`giolib045_modify.lef`)에서 `CLASS PAD AREAIO`라서 init.io로 IO 링에 놓이지 않고 코어 가운데에 남았다.
   해결: init.io의 모든 패드에 `offset`을 적고, `floorPlan` 직후 `placeInstance` 8줄로 PADVDD·PADVSS를 직접 배치했다.
2. 문제: 다이 1760㎛가 배치 격자(0.19㎛)에 맞춰 1759.97㎛로 바뀌어, 위쪽 패드가 다이 밖으로 0.03㎛ 나갔다 (IMPFP-3356).
   해결: 다이를 0.19와 0.2의 공배수인 1748㎛로 바꿨다.
3. 문제: 코어 모서리가 배치 격자 위에 있지 않았다 (IMPFP-7238).
   해결: 코어 여백을 다이 기준으로 주는 `-coreMarginsBy die` 옵션을 썼다.

**1단계 — Power Plan**
- 문제: `verifyConnectivity`가 40건을 보고했다. 20건은 패드 위치의 소수점과 다이 높이(1759.97㎛) 때문이었고(0단계 수정으로 해결), 나머지 20건은 IO 링 레일 조각이었다.
- 원인: 패드 라이브러리 abstract에서 IO 링 레일 핀에 전원 연결이 정의되어 있지 않다. 레일은 패드와 IO filler가 맞닿아 이어진다.
- 해결: IO 링 레일 핀 목록을 `verifyConnectivity -ignorePGPin`에 넘겼다. 코어 전원 핀(PADVDD:VDD, PADVSS:VSS)은 그대로 점검한다. 4·5·6단계에도 같은 목록을 쓴다.

**3단계 — CTS**
- 문제: hold·removal 위반 211건(WNS -0.235ns)이 발생했다. `i_thr_wdata[7:0]`→D hold 128건, `i_rst_n`→RN removal 83건이다.
- 원인: 패드가 없는 입력 포트는 위치가 없어 `optDesign`이 그 넷에 버퍼를 넣지 못했다.
- 해결: 9개 넷의 플립플롭 쪽에 `ecoAddRepeater`로 버퍼를 넣고 `optDesign -postCTS -hold`를 2회 실행했다. 입력 지연을 줄이는 SDC 완화는 쓰지 않았다.

**4단계 — Routing·Power Analysis**
1. 문제: 연결 점검 20건(IO 링). 해결: 1단계와 같은 `-ignorePGPin`.
2. 문제: 라우팅 후 hold 1건(-0.001ns). 해결: `optDesign -postRoute -hold`를 한 번 더 실행했다.
3. 문제: max_tran 위반 22넷(Real 21 + 클록 `i_clk`, 최악 -1.435ns). `optDesign`이 IMPOPT-665("Net has unplaced terms")로 이 넷들을 건너뛰었다.
   - 원인: 패드가 없는 포트 28개는 (0,0)에 남고, 라우팅 후 RC 추출이 (0,0)부터 가상 배선을 더한다.
   - 해결: `restoreDesign` 직후, 라우팅 전에 시그널 패드 28개를 ECO로 추가했다(`addNet`·`attachTerm`·`addInst`·`placeInstance`). 처음에는 입력 패드를 모서리에 두었다가 패드 구동력이 부족해 max_tran이 남아서, 입력 패드를 가운데 자리로 옮겼다. 클록 넷에 남은 -0.003ns는 루트 버퍼(CLKBUFX8)로 해결했다.

### 최종 결과 (5단계, 2026-11-16)

| 항목 | 값 |
|---|---|
| Setup WNS | +6.103ns (TNS 0) |
| Hold WNS | +0.003ns (TNS 0) |
| max_tran · max_cap · max_fanout | 0 |
| DRC | 0 |
| 연결 점검 | 0 (IO 링 레일 핀 제외) |
| 전력 (static, FUNC_SS_WORST) | 11.63mW |
| 밀도 | 1.96% (filler 포함 100%) |

출력 (`PNR/uart_pad_outputs/`): `uart_top_pad.gds`, `uart_top_pad.v` (전원 패드 제외 netlist), `uart_top_pad.sdc`, `uart_top_pad.sdf`, `uart_top_pad.sdf_2.1`

## 폴더 구조

```
SoC_make_G45/TOP/
├── RTL/        UART RTL (uart_top.v, uart_tx.v, uart_rx.v, fifo.v, baud_rate_gen.v)
├── SIM/        FUNCTION(기능), PRE(합성 후), POST(PnR 후), TESTBENCH(tb_uart.v)
├── SYN/        script/, cons/, 합성 결과(uart_mapped/, uart_report/)
├── EC/         uart_script.tcl (RTL ↔ 합성 netlist)
└── PNR/
    ├── 0_InitDesign.tcl ~ 6_ECO.tcl   교재 원본 흐름 (cmsdk)
    ├── uart_pad/                      UART 패드 칩 PnR 스크립트
    ├── uart_pad_outputs/              5단계 결과 (GDS, netlist, SDC, SDF)
    └── uart_pad_reports/              단계별 리포트 (checkDesign, clock, power, timing, DRC)
```

`RTL/cpu8/`, `SIM/run_cpu8_function.sh`, `SYN/cpu8_*`는 8비트 CPU 실험 파일이며 이 문서의 범위에 포함하지 않는다.

## 실행 방법

```
# 합성 (TOP/SYN)
./uart_run_synthesis

# LEC (TOP/EC)
lec
SETUP> dofile uart_script.tcl

# PnR (TOP/PNR)
innovus
innovus> source uart_pad/uart_pad_0_InitDesign.tcl
```

- PnR 0단계와 4단계는 새 Innovus 세션에서 실행하며 마지막 줄이 `exit`이다. 4단계는 `uart_pad_PostCTSopt.dat`를 읽어 시작한다.
- 1·2·3·5단계는 `restoreDesign`과 `exit`이 주석 처리되어 있다. 앞 단계에 이어 같은 GUI 세션에서 실행하거나, 주석 처리된 `restoreDesign` 줄을 먼저 실행한다.
- 6단계는 `uart_pad_RouteDesign.dat`를 읽어 시작한다.
- `uart_pad_clean.tcl`은 uart_pad 결과만 지운다 (cmsdk와 uart_no_pad 결과는 유지).

## 남은 일

1. Post-Layout LEC (교재 2권 9장): Golden은 합성 netlist, Revised는 `PNR/uart_pad_outputs/uart_top_pad.v`다. Revised에는 시그널 패드 28개와 클록 루트 버퍼가 추가되어 있고, 전원 패드는 5단계 `saveNetlist -excludeCellInst`로 제외되어 있다.
2. Tempus STA (교재 2권 10장)로 `uart_pad/innovus.eco`를 만든 뒤 6단계 (교재 2권 11장)를 실행한다.
3. Hold 여유가 +0.003ns로 작으므로 Tempus와 6단계 후 다시 확인한다.
4. MCU(cmsdk) 내부 블록으로 넣을 패드 없는 버전(`uart_no_pad`) PnR을 진행한다.
