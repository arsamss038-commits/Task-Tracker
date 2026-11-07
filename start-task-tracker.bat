@echo off
setlocal
cd /d "%~dp0"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\start-task-tracker.ps1"
if errorlevel 1 (
    echo.
    echo Task Tracker could not be started. Check the message above and the logs folder.
    pause
)
