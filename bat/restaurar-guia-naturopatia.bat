@echo off
chcp 65001 >nul
echo ========================================
echo RESTAURAR: Guia Pratico Naturopatia
echo ========================================
echo.

cd /d "%~dp0\.."

echo [1/1] Restaurando arquivo do último commit...
git checkout HEAD -- html/guia-pratico-naturopatia.html
if %errorlevel% neq 0 (
    echo ERRO: Falha ao restaurar arquivo!
    pause
    exit /b 1
)
echo Arquivo restaurado com sucesso!
echo.

echo ========================================
echo ARQUIVO RESTAURADO!
echo ========================================
echo.
echo O arquivo html/guia-pratico-naturopatia.html foi restaurado.
echo Agora vou aplicar as atualizações solicitadas.
echo.

pause

