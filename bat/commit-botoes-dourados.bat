@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Botoes Dourados Site Principal
echo ========================================
echo.

cd /d "%~dp0\.."

echo [1/4] Verificando status do Git...
git status
echo.

echo [2/4] Adicionando TODOS os arquivos modificados...
git add .
git add -A
if %errorlevel% neq 0 (
    echo ERRO: Falha ao adicionar arquivos!
    pause
    exit /b 1
)
echo Arquivos adicionados com sucesso!
echo.

echo [3/4] Fazendo commit...
git commit -m "style: mudar botoes primary de verde para dourado - Background: gradient d4af37 → f4e4b8 → d4af37 (dourado) - Texto: preto (#1a1a1a) em vez de branco - Border: d4af37 (dourado) - Sombras: rgba(212, 175, 55, ...) (dourado) - Hover: sombras douradas intensificadas, border f4e4b8 - Hero, cards e footer: mantidos em verde - Resultado: botoes premium dourados contrastando com fundo verde"
if %errorlevel% neq 0 (
    echo AVISO: Nada para commitar ou erro ao commitar
    git status
    pause
    exit /b 0
)
echo Commit realizado com sucesso!
echo.

echo [4/4] Fazendo push para o repositório...
git push
if %errorlevel% neq 0 (
    echo ERRO: Falha ao fazer push!
    pause
    exit /b 1
)
echo Push realizado com sucesso!
echo.

echo ========================================
echo BOTOES DOURADOS APLICADOS!
echo ========================================
echo.
echo ✅ BOTOES PRIMARY:
echo    - Background: gradient dourado
echo    - Cores: d4af37 → f4e4b8 → d4af37
echo    - Texto: preto (#1a1a1a)
echo    - Border: dourado d4af37
echo    - Sombras: tons dourados
echo.
echo ✅ HOVER:
echo    - Sombras intensificadas (dourado)
echo    - Border: f4e4b8 (dourado claro)
echo    - Transform: translateY + scale
echo.
echo ✅ MANTIDOS EM VERDE:
echo    - Hero section background
echo    - Cards educadora icones
echo    - Footer background
echo    - Titulos (4f772d)
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app
echo.
echo Botoes dourados premium contrastando com fundo verde!
echo.

pause

