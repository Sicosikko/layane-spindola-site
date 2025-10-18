@echo off
echo ========================================
echo    COMMIT - MOBILE CURSOS QUADRADOS
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
git commit -m "feat: Adicionar estilos responsivos mobile para secao cursos - Tablet 768px: padding 3rem, titulo 1.8rem, card 1.2rem - Mobile 480px: padding 2.5rem, titulo 1.6rem, card 1rem - Imagens quadradas mantidas em todas telas - Border-radius progressivo: 12px desktop, 10px tablet, 8px mobile - Textos reduzidos: titulo 1.2-1.1rem, desc 0.85-0.8rem - Botoes adaptados: padding e font-size reduzidos - Aspect-ratio 1:1 funciona em todos breakpoints - Grid responsivo mantido"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Estilos mobile adicionados
    echo ✅ Imagens quadradas em todas telas
    echo ✅ Layout responsivo completo
    echo.
    echo AJUSTES POR BREAKPOINT:
    echo.
    echo DESKTOP ^(1024px+^):
    echo - Section padding: 4rem
    echo - Titulo secao: 2.2rem
    echo - Card padding: 1.5rem
    echo - Titulo card: 1.3rem
    echo - Descricao: 0.9rem
    echo - Border-radius: 12px
    echo - Imagem: aspect-ratio 1:1
    echo.
    echo TABLET ^(768px^):
    echo - Section padding: 3rem
    echo - Titulo secao: 1.8rem
    echo - Card padding: 1.2rem
    echo - Titulo card: 1.2rem
    echo - Descricao: 0.85rem
    echo - Border-radius: 10px
    echo - Botao: 11px x 18px
    echo.
    echo MOBILE ^(480px^):
    echo - Section padding: 2.5rem
    echo - Titulo secao: 1.6rem
    echo - Card padding: 1rem
    echo - Titulo card: 1.1rem
    echo - Descricao: 0.8rem
    echo - Border-radius: 8px
    echo - Botao: 10px x 16px
    echo.
    echo IMAGENS ^(TODAS TELAS^):
    echo - Aspect-ratio: 1:1 ^(quadradas^)
    echo - Width: 100%%
    echo - Height: 100%%
    echo - Object-fit: cover
    echo - Hover: scale 1.05
    echo.
    echo RESULTADO:
    echo - Desktop: 3 cards + 1 centralizado
    echo - Tablet: 2 cards por linha
    echo - Mobile: 1 card por linha
    echo - Imagens sempre quadradas
    echo - Textos legiveis
    echo - Botoes acessiveis
    echo - Layout limpo e compacto
    echo.
    echo Aguarde 2-3 minutos e teste em todos dispositivos:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Mobile: Desktop: Tablet: - Tudo otimizado! 📱💻✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
