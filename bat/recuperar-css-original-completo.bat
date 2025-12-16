@echo off
cd /d "%~dp0\.."
powershell -ExecutionPolicy Bypass -File "bat\recuperar-css-original-completo.ps1"

