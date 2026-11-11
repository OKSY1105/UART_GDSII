# CPU8 RTL 기능 시뮬레이션 및 합성 결과

- 실행일: 2026-11-11 (KST)
- 대상: `cpu8_top` 단독 블록. UART·ROM/RAM 실매크로는 합성 대상에 포함하지 않음.
- 순서: RTL 기능 SIM(Xcelium) → SYN(Genus)
- 최종 판정: **CPU8_RTL_SIM=PASS**, **CPU8_SYN=PASS**

## RTL 기능 SIM

- 실행: `SoC_make_G45/TOP/SIM/run_cpu8_function.sh`
- 입력: `SIM/TESTBENCH/tb_cpu8_top.sv`, `cpu8_smoke.hex`, `RTL/cpu8/*`
- 원 실행 폴더: `SIM/cpu8_runs/20261111_202705_120359/`
- 16비트 HEX 프로그램: LDI, ADD, LDXL, ST, LD, CMP, 조건 분기, SUB, HALT. 분기가 건너뛴 명령은 retire 되지 않아야 함.
- 결과: 20사이클 동안 11개 명령 retire, 메모리 store 1회. R0=0x08, R1=0x01, R2=0x07, R3=0x00, X=0x0020, FLAGS=0x2, PC=0x000C, MEM[0x20]=0x08.
- 증거: `sim/xrun.log`의 retire trace 및 `CPU8_RTL_SIM=PASS`.

## SYN

- 실행: `SoC_make_G45/TOP/SYN/run_cpu8_synthesis.sh`
- 원 실행 폴더: `SYN/cpu8_runs/20261111_202403_117225/`
- Genus 22.17-s071_1 정상 종료, 오류 0건, `check_design` 미해결 참조 0건.
- 넷리스트, 최종 SDC, 합성 SDF가 모두 생성됨: `syn/cpu8_top_syn_final.v`, `syn/cpu8_top_syn_final.sdc`, `syn/cpu8_top_delays.sdf`.
- 임시 10 ns 제약의 합성 리포트: critical path slack +7787.5 ps, TNS 0, leaf instance 1568, cell area 4455.234.
- 증거: `syn/qor.rpt`, `syn/00_check_design.rpt`, `syn/genus_console.log`.

## 범위

이 검증은 하나의 HEX 프로그램과 대기 사이클이 없는 메모리 모델을 사용한 CPU 단독 기능 확인이다. 모든 명령, 인터럽트, 버스 오류·대기, UART 통합 동작을 검증한 결과는 아니다. 10 ns 합성 수치는 임시 SDC와 합성 단계 추정치이며 배치·배선 후 STA 결과가 아니다. LEC는 사용 가능한 툴이 없어 실행하지 않았다.
