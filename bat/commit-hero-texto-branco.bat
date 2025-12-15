@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Hero Texto Branco Contrastante
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
git commit -m "style: alterar gradiente texto hero de dourado para branco - Gradiente anterior: d4af37 (dourado) / f4e4b8 (dourado claro) - Novo gradiente: ffffff (branco) / f0f0f0 (branco off) - Text-shadow: glow branco em vez de dourado - Melhor contraste com fundo verde escuro - Mantida animacao titleGradient"
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
echo TEXTO BRANCO CONTRASTANTE APLICADO!
echo ========================================
echo.
echo ✅ GRADIENTE TEXTO:
echo    - Antes: Dourado (d4af37) / Dourado claro (f4e4b8)
echo    - Depois: Branco (ffffff) / Branco off (f0f0f0)
echo    - Melhor contraste com verde escuro
echo.
echo ✅ TEXT-SHADOW:
echo    - Antes: Glow dourado rgba(212, 175, 55, 0.3)
echo    - Depois: Glow branco rgba(255, 255, 255, 0.3)
echo    - Mais suave e elegante
echo.
echo ✅ MANTIDO:
echo    - Animacao titleGradient (3s ease infinite)
echo    - Efeito de movimento do gradiente
echo    - Fade-in animation
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app
echo.

pause

