@echo off
echo ========================================
echo    COMMIT - ATUALIZAR FOTO HERO
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
git commit -m "fix: Atualizar URL da imagem hero com versao corrigida - URL antiga: i.postimg.cc/855dRQsj/Naturopatia-Pratica-1.png - URL nova: i.postimg.cc/MGHW7d0f/Naturopatia-Pratica-1.png - Imagem corrigida mantendo mesmo layout e estilos - Alt text e loading lazy mantidos - Design premium preservado"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ URL da foto hero atualizada
    echo ✅ Versao corrigida aplicada
    echo ✅ Layout e estilos mantidos
    echo.
    echo ALTERACAO:
    echo.
    echo URL ANTIGA:
    echo https://i.postimg.cc/855dRQsj/Naturopatia-Pratica-1.png
    echo.
    echo URL NOVA ^(CORRIGIDA^):
    echo https://i.postimg.cc/MGHW7d0f/Naturopatia-Pratica-1.png
    echo.
    echo MANTIDO:
    echo - Layout lado a lado ^(desktop^)
    echo - Borda dourada 4px
    echo - Max-width 400px
    echo - Max-height 550px
    echo - Border-radius 20px
    echo - Hover effects
    echo - Box-shadow dourado
    echo - Alt text descritivo
    echo - Loading lazy
    echo - Responsividade mobile
    echo.
    echo Aguarde 2-3 minutos e veja a imagem corrigida:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Imagem hero atualizada com sucesso! 📸✅
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
