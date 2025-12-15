@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Design Moderno e Fluido
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
git commit -m "feat: design moderno fluido e tecnologico - Hero: background preto/escuro com padroes dourados animados - Botoes premium: sombras 3D, gradientes animados, efeitos ripple - Hover avancado: scale, rotate, glow effects - Cards: animacoes de hover com shimmer e elevacao - Imagens: filtros, transformacoes 3D, sombras multiplas - Textos: animacoes de fade-in, gradientes animados - Nav links: underline animado com glow - CSS moderno: backdrop-filter, cubic-bezier, keyframes - Performance: GPU acceleration, will-change"
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
echo CONCLUIDO COM SUCESSO!
echo ========================================
echo.
echo DESIGN MODERNO APLICADO:
echo.
echo ✅ HERO SECTION:
echo    - Background: Preto/escuro com padroes dourados
echo    - Animacao: Pulso suave de background
echo    - Overlay: Gradientes radiais dourados
echo    - Parallax: Background fixo
echo.
echo ✅ BOTOES PREMIUM:
echo    - Sombras 3D multiplas com glow
echo    - Gradientes animados
echo    - Efeito ripple ao hover
echo    - Shimmer/shine effect
echo    - Scale + elevacao ao hover
echo.
echo ✅ CARDS E IMAGENS:
echo    - Hover: scale + rotate + elevacao
echo    - Sombras multiplas com glow
echo    - Filtros: brightness, saturate, contrast
echo    - Shimmer na borda ao hover
echo.
echo ✅ ANIMACOES:
echo    - Fade-in escalonado (titulo, subtitulo, CTA)
echo    - Gradientes animados em textos
echo    - Nav links com underline glow
echo    - Background pulse
echo.
echo ✅ TECNOLOGIAS MODERNAS:
echo    - backdrop-filter (glassmorphism)
echo    - cubic-bezier (animacoes suaves)
echo    - CSS keyframes
echo    - Transform 3D
echo    - Multiple box-shadows
echo    - Filter effects
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app
echo.

pause

