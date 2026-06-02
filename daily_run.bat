@echo off
cd /d "C:\Users\altai\Dropbox (Personal)\99 XX\00 TradingBot"

set LOGFILE=logs\daily_%date:~0,4%%date:~5,2%%date:~8,2%.log

echo =============================== >> %LOGFILE%
echo Daily focused run started: %date% %time% >> %LOGFILE%
echo =============================== >> %LOGFILE%

python run_daily.py >> %LOGFILE% 2>&1
python scripts\generate_site.py >> %LOGFILE% 2>&1
git add registry/all_results.csv registry/champion.json registry/run_log.csv docs/index.html >> %LOGFILE% 2>&1
git commit -m "Daily run: %date%" >> %LOGFILE% 2>&1
git push origin main >> %LOGFILE% 2>&1

echo Finished: %date% %time% >> %LOGFILE%
