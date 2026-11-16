# UART_GDSII

직접 설계한 UART(`uart_top`)를 GPDK045(45nm) 라이브러리로 RTL부터 GDSII까지 구현한 실습 저장소다.
Cadence 툴(Xcelium, Genus, Conformal LEC, Innovus, Tempus)을 사용하며, 교재 『Cadence로 배우는 Arm 기반 SoC 설계』 2권(Digital Back-End)의 `SoC_make_G45` 흐름을 따른다.

## 진행 상태

| 단계 | 내용 | 상태 |
|---|---|:---:|
| RTL | `uart_top` (송신기, 수신기, FIFO, 보레이트 생성기) | 완료 |
| SIM | 기능 시뮬레이션 (`hello.hex`, 28바이트 송수신 PASS) | 완료 |
| SYN | Genus 합성, 클록 주기 10ns (100MHz) | 완료 |
| EC | RTL ↔ 합성 netlist LEC (PASS) | 완료 |
| PnR 0~5단계 | 패드를 포함한 단독 칩 (`PNR/uart_pad`) | 완료 |
| Post-Layout EC | 합성 netlist ↔ PnR netlist LEC (교재 2권 9장) | 대기 |
| Tempus STA | ECO 파일 생성 (교재 2권 10장) | 대기 |
| PnR 6단계 | ECO 반영 (교재 2권 11장) | 대기 |

## 폴더 구조

```
SoC_make_G45/TOP/
├── RTL/        UART RTL (uart_top.v, uart_tx.v, uart_rx.v, fifo.v, baud_rate_gen.v)
├── SIM/        FUNCTION(기능), PRE(합성 후), POST(PnR 후), TESTBENCH(tb_uart.v)
├── SYN/        script/uart_45nm.tcl, cons/uart_top.sdc, 합성 결과(uart_mapped/, uart_report/)
├── EC/         uart_script.tcl (RTL ↔ 합성 netlist)
└── PNR/
    ├── 0_InitDesign.tcl ~ 6_ECO.tcl   교재 원본 흐름 (cmsdk)
    ├── uart_pad/                      UART 패드 칩 PnR 스크립트
    ├── uart_pad_outputs/              5단계 결과 (GDS, netlist, SDC, SDF)
    └── uart_pad_reports/              단계별 리포트 (checkDesign, clock, power, timing, DRC)
```

`RTL/cpu8/`, `SIM/run_cpu8_function.sh`, `SYN/cpu8_*`는 8비트 CPU 실험 파일이며 이 문서의 범위에 포함하지 않는다.

## PnR 흐름 (`PNR/uart_pad`)

Innovus는 `TOP/PNR` 폴더에서 legacy 모드로 실행한다 (`-stylus`를 쓰지 않는 이유는 `PNR/README` 참고).

| 단계 | 스크립트 | 교재 2권 | 내용 |
|:---:|---|:---:|---|
| 0 | `uart_pad_0_InitDesign.tcl` | 3장 | netlist·LEF·MMMC·init.io 읽기, 다이 1748×1748㎛, PADVDD·PADVSS 배치 |
| 1 | `uart_pad_1_PowerPlan.tcl` | 4장 | IO 전원 net 추가, core ring, sroute |
| 2 | `uart_pad_2_PlaceOpt.tcl` | 5장 | 배치와 배치 최적화 |
| 3 | `uart_pad_3_PostCTSopt.tcl` | 6장 | CTS와 CTS 후 최적화 |
| 4 | `uart_pad_4_RouteDesign_PowerAnalysis.tcl` | 7장 | 시그널 패드 ECO, 라우팅, DRV·타이밍 최적화, 전력 분석 |
| 5 | `uart_pad_5_ChipFinish.tcl` | 8장 | filler 삽입, 최종 점검, GDS·netlist·SDC·SDF 출력 |
| - | `uart_pad_tempus.tcl` | 10장 | Tempus STA (미실행) |
| 6 | `uart_pad_6_ECO.tcl` | 11장 | `uart_pad/innovus.eco` 반영 (Tempus 결과 필요, 미실행) |

- 0단계와 4단계는 새 Innovus 세션에서 실행하며 마지막 줄이 `exit`이다. 4단계는 `uart_pad_PostCTSopt.dat`를 읽어 시작한다.
- 1·2·3·5단계는 `restoreDesign`과 `exit`이 주석 처리되어 있다. 앞 단계에 이어 같은 GUI 세션에서 실행하거나, 주석 처리된 `restoreDesign` 줄을 먼저 실행한다.
- 6단계는 `uart_pad_RouteDesign.dat`를 읽어 시작한다.
- `uart_pad_clean.tcl`은 uart_pad 결과만 지운다 (cmsdk와 uart_no_pad 결과는 유지).

```
cd SoC_make_G45/TOP/PNR
innovus
innovus> source uart_pad/uart_pad_0_InitDesign.tcl
```

### 패드 구성

- 전원 패드 16개: PADVDD·PADVSS·PADVDDIOR·PADVSSIOR를 각 변에 1개씩 둔다. `uart_pad/uart_add_pad`의 16줄을 합성 netlist(`SYN/uart_mapped/uart_top_syn_final.v`)에 넣어 사용한다.
- 시그널 패드 30개
  - RX·TX 2개: 합성 netlist에 포함되어 있다 (`u_pad_uart_rx`, `u_pad_uart_tx`).
  - 나머지 포트 28개 (입력 PADDI 12개, 출력 PADDO 16개): 4단계에서 라우팅 전에 ECO로 추가한다.
- 클록 루트 버퍼 1개: 클록 패드와 클록 트리 사이가 약 630㎛이므로 코어 가장자리에 CLKBUFX8(`u_clk_pad_buf`)을 둔다.
- 4단계에서 패드를 추가하는 이유: 패드가 없는 포트는 (0,0)에 남는다. 라우팅 후 RC 추출이 (0,0)부터 가상 배선을 더해 max_tran 위반이 22개 net에서 발생하고, optDesign은 이 net을 고치지 못한다 (IMPOPT-665).

### 결과 (5단계, 2026-11-16)

| 항목 | 값 |
|---|---|
| Setup WNS | +6.103 ns (TNS 0) |
| Hold WNS | +0.003 ns (TNS 0) |
| max_tran · max_cap · max_fanout | 0 |
| DRC | 0 |
| Connectivity | 0 (IO 링 레일 핀 제외) |
| 전력 (static, FUNC_SS_WORST) | 11.63 mW |
| 밀도 | 1.96% (filler 포함 100%) |

## 남은 일

1. Post-Layout EC: Golden은 합성 netlist(`SYN/uart_mapped/uart_top_syn_final.v`), Revised는 `PNR/uart_pad_outputs/uart_top_pad.v`이다. Revised에는 시그널 패드 28개와 클록 루트 버퍼가 추가되어 있고, 전원 패드는 5단계 `saveNetlist -excludeCellInst`로 제외되어 있다.
2. Tempus STA로 `uart_pad/innovus.eco`를 만든 뒤 6단계를 실행한다.
3. Hold 여유가 +0.003 ns로 작으므로 Tempus와 6단계 후 다시 확인한다.
