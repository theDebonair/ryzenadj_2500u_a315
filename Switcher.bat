@echo off
wmic path Win32_Battery Get BatteryStatus | find /v "BatteryStatus" | find "1" >nul 2>&1
if "%errorlevel%" == "0" (call "%~dp0\DC Preset.bat") else (call "%~dp0\AC Preset.bat")
