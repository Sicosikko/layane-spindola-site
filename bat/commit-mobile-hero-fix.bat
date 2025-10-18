@echo off
echo ========================================
echo    COMMIT - CORRECAO HERO MOBILE
echo ========================================
echo.

echo Verificando status...
git status

echo.
echo Adicionando arquivos...
git add .
git add -A

echo.
echo Fazendo commit...
git commit -m "fix: Corrigir layout hero em dispositivos moveis - Hero min-height auto e max-height none em mobile - Titulo mobile: 1.8rem tablet, 1.6rem mobile pequeno - Subtitulo: 1rem tablet, 0.95rem mobile - Foto: max 320px tablet, 280px mobile - Foto altura: 400px tablet, 350px mobile - Botoes empilhados verticalmente em coluna - Botoes width 100%% com max-width 280px - Padding ajustado: 100px tablet, 90px mobile - Gap reduzido para 2rem - Line-height otimizado para mobile - Desktop permanece perfeito"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Hero mobile corrigido
    echo ✅ Desktop continua perfeito
    echo ✅ Layout responsivo completo
    echo.
    echo AJUSTES MOBILE:
    echo.
    echo DIMENSOES TABLET ^(768px^):
    echo - Hero: min-height auto ^(flex^)
    echo - Titulo: 1.8rem
    echo - Subtitulo: 1rem
    echo - Foto: max 320px x 400px
    echo - Botoes: 12px x 28px
    echo - Padding: 100px top, 3rem bottom
    echo.
    echo DIMENSOES MOBILE ^(480px^):
    echo - Hero: padding 90px top, 2rem bottom
    echo - Titulo: 1.6rem
    echo - Subtitulo: 0.95rem
    echo - Foto: max 280px x 350px
    echo - Botoes: 11px x 24px
    echo.
    echo LAYOUT MOBILE:
    echo - Grid: 1 coluna
    echo - Texto acima, centralizado
    echo - Foto abaixo, centralizada
    echo - Botoes empilhados vertical
    echo - Botoes width 100%%, max 280px
    echo - Gap: 2rem entre elementos
    echo.
    echo DESKTOP ^(1024px+^):
    echo - Grid: 2 colunas ^(1.2fr / 0.8fr^)
    echo - Titulo: 2.8rem
    echo - Subtitulo: 1.1rem
    echo - Foto: max 400px x 550px
    echo - Hero: max-height 100vh
    echo - Cabe perfeitamente na tela
    echo.
    echo RESULTADO:
    echo - Desktop: Layout perfeito lado a lado
    echo - Tablet: Layout vertical bem espacado
    echo - Mobile: Layout compacto e legivel
    echo - Todos responsivos e otimizados
    echo.
    echo Aguarde 2-3 minutos e teste no celular:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Layout mobile agora esta perfeito! 📱✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
