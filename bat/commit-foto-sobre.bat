@echo off
echo ========================================
echo    COMMIT - FOTO SECAO SOBRE MIM
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
git commit -m "feat: Adicionar foto na secao Sobre Mim com layout responsivo - Imagem: https://i.postimg.cc/L47tdbQc/Naturopatia-Pratica-2.png - Grid 2 colunas desktop: 0.8fr foto, 1.2fr texto - Foto max-width 380px, max-height 500px - Borda dourada 3px premium - Gap 3rem entre colunas - Desktop: foto esquerda, texto direita - Mobile: texto acima, foto abaixo - Responsivo para tablet e mobile - Object-fit cover para proporcao - Hover effects mantidos"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Foto da secao Sobre Mim adicionada
    echo ✅ Layout lado a lado no desktop
    echo ✅ Responsivo para mobile
    echo.
    echo DESKTOP LAYOUT:
    echo.
    echo ┌────────────┬──────────────────┐
    echo │            │                  │
    echo │   FOTO     │      TEXTO       │
    echo │  380x500   │   - Titulo       │
    echo │            │   - Descricao    │
    echo │            │   - Credenciais  │
    echo │            │   - Stats        │
    echo └────────────┴──────────────────┘
    echo   0.8fr           1.2fr
    echo.
    echo ESPECIFICACOES:
    echo.
    echo DESKTOP:
    echo - Grid: 0.8fr ^(foto^) + 1.2fr ^(texto^)
    echo - Gap: 3rem
    echo - Foto: max 380px x 500px
    echo - Alinhamento: center
    echo.
    echo TABLET ^(768px^):
    echo - Grid: 1 coluna
    echo - Texto primeiro ^(order 1^)
    echo - Foto depois ^(order 2^)
    echo - Foto: max 320px x 400px
    echo - Texto centralizado
    echo.
    echo MOBILE ^(480px^):
    echo - Foto: max 280px x 350px
    echo - Layout vertical
    echo - Elementos centralizados
    echo.
    echo DESIGN PREMIUM:
    echo - Borda dourada: 3px
    echo - Border-radius: 20px
    echo - Box-shadow elegante
    echo - Borda dupla decorativa
    echo - Hover: elevacao + scale
    echo.
    echo IMAGEM:
    echo - URL: postimg.cc/L47tdbQc
    echo - Alt: Layane Spindola - Trajetoria Profissional
    echo - Loading: lazy
    echo - Object-fit: cover
    echo.
    echo Aguarde 2-3 minutos e veja:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Secao Sobre Mim agora com foto profissional! 📸✨
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
