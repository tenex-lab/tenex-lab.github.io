# HANDOFF — TenEx 대시보드 (TradingBot 프로젝트 타워)

갱신: 2026-10-26 · 프로젝트 타워 세션 신설 (총괄 타워 지시)
상태: 자동 실행 정상 — 일간(평일 02시)·주간(일 02시) 실행이 대시보드에 매일 커밋 중(최근 10-26 Daily run). 라이브 매매는 엔진 Task Scheduler 가 따로 돌림.
다음: 총괄 타워가 보내는 일 처리. 매매·주문·계좌·위험 한도는 건드리지 않음(의도서 "반드시 물어볼 것").
막힘: 결정: 라이브 per-share 커미션 요율 확정 — 사용자가 명세서 재확인 후 알려주면 엔진 `run_live.py` `PER_SHARE_FEE` 한 줄 반영(로컬 WORKLOG [12]). 그 전엔 규제수수료만 반영 상태 유지.
오늘 밤: ① `registry/champion.json` 이 6-10 이후 안 바뀜 vs `run_log.csv` 의 top 은 매일 바뀜 — 원인 조사만(읽기 전용, 매매 코드 수정 없음), 결과를 이 머리말에 기록 ② 최근 1주 일간·주간 실행 로그 점검(누락·에러) ③ 로컬 CLAUDE.md 의 낡은 "Current champion" 줄 정리(문서만)
더 볼 곳: 로컬 `WORKLOG.md`(작업 이력, gitignored) · `PROJECT.md` · 의도서 `C:\dev\_control-tower\intent\TradingBot.md` · 엔진 `C:\dev\TradingBot-engine`

---

## 주의
- 이 저장소는 **공개**다(GitHub Pages 는 `/docs` 만 서비스). 계좌·잔고·보유 종목·실명·금액은 이 파일에 쓰지 않는다.
- 상세 이력·결정은 로컬 전용 `WORKLOG.md` 에 둔다.
