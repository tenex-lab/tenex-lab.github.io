@echo off
cd /d "C:\Users\altai\Dropbox (Personal)\99 XX\00 TradingBot"

for /f %%a in ('powershell -command "Get-Date -Format yyyyMMdd"') do set DATESTR=%%a
set LOGFILE=logs\weekly_%DATESTR%.log

echo =============================== >> %LOGFILE%
echo Weekly FULL run started: %DATE% %TIME% >> %LOGFILE%
echo =============================== >> %LOGFILE%

python run_all.py >> %LOGFILE% 2>&1
python scripts\generate_site.py >> %LOGFILE% 2>&1
git add registry/all_results.csv registry/champion.json registry/run_log.csv docs/index.html >> %LOGFILE% 2>&1
git commit -m "Weekly full run: %DATESTR%" >> %LOGFILE% 2>&1
git push origin main >> %LOGFILE% 2>&1

echo Finished: %DATE% %TIME% >> %LOGFILE%
