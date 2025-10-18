@echo off
echo ========================================
echo    COMMIT - BARRA DE ROLAGEM SIDEBAR
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
git commit -m "feat: Adicionar barra de rolagem estilizada no sidebar mobile - overflow-y: scroll com !important para garantir scroll - max-height: 100vh para limitar altura - webkit-overflow-scrolling: touch para iOS - overscroll-behavior: contain para prevenir scroll duplo - Barra de rolagem estilizada em dourado - Largura 8px desktop e 6px mobile - Thumb dourado com hover effect - Track cinza claro - Scroll funcional em todos dispositivos"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Barra de rolagem adicionada ao sidebar
    echo ✅ Scroll funcional em dispositivos moveis
    echo ✅ Design premium com dourado
    echo.
    echo MELHORIAS APLICADAS:
    echo.
    echo SCROLL:
    echo - overflow-y: scroll !important
    echo - max-height: 100vh
    echo - -webkit-overflow-scrolling: touch
    echo - overscroll-behavior: contain
    echo.
    echo DESIGN DA BARRA:
    echo - Largura: 8px ^(desktop^) / 6px ^(mobile^)
    echo - Track: Cinza claro #f1f1f1
    echo - Thumb: Dourado #d4af37
    echo - Hover: Dourado escuro #b8941e
    echo - Border radius: 4px
    echo.
    echo FUNCIONALIDADE:
    echo - Scroll suave no iOS ^(touch^)
    echo - Previne scroll duplo ^(contain^)
    echo - Barra visivel apenas quando necessario
    echo - Design premium mantido
    echo.
    echo Aguarde 2-3 minutos e teste no celular:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo TESTE:
    echo - Abrir sidebar
    echo - Rolar para baixo
    echo - Ver todas as opcoes do menu
    echo - Barra dourada deve aparecer
    echo - Scroll suave e fluido
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
