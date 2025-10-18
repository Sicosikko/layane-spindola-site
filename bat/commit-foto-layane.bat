@echo off
echo ========================================
echo    COMMIT - FOTO LAYANE SPINDOLA
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
git commit -m "feat: Adicionar foto profissional da Layane Spindola - Foto inserida na hero section e secao Sobre Mim - Imagem hospedada: postimg.cc/855dRQsj - Borda dourada premium (4px hero, 3px sobre) - Box shadow com efeito dourado - Border radius 20px elegante - Hover effects: scale e elevacao - Decoracao com borda dupla dourada na secao Sobre - Loading lazy para performance - Alt text descritivo para SEO - Max-width 450px hero e 400px sobre - Design premium mantido"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Foto da Layane Spindola adicionada
    echo ✅ Design premium com bordas douradas
    echo ✅ Hover effects elegantes
    echo.
    echo LOCAIS DA FOTO:
    echo.
    echo HERO SECTION:
    echo - Posicao: Lado direito do titulo
    echo - Max-width: 450px
    echo - Borda: 4px dourada
    echo - Shadow: Dourado com transparencia
    echo - Hover: Scale 1.03 + shadow aumentado
    echo.
    echo SECAO SOBRE MIM:
    echo - Posicao: Lado esquerdo do texto
    echo - Max-width: 400px
    echo - Borda: 3px dourada
    echo - Decoracao: Borda dupla em background
    echo - Hover: TranslateY -5px + scale 1.02
    echo.
    echo DETALHES TECNICOS:
    echo - URL: https://i.postimg.cc/855dRQsj/Naturopatia-Pratica-1.png
    echo - Loading: lazy ^(otimizado^)
    echo - Alt: Descritivo para SEO
    echo - Border-radius: 20px
    echo - Transition: 0.4s ease
    echo.
    echo EFEITOS PREMIUM:
    echo - Borda dourada ^(#d4af37^)
    echo - Box shadow dourado
    echo - Hover scale suave
    echo - Borda decorativa dupla
    echo - Responsivo para mobile
    echo.
    echo Aguarde 2-3 minutos e veja a foto:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo A foto profissional da Layane esta linda! ✨
    echo Design premium com bordas douradas combina perfeitamente!
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
