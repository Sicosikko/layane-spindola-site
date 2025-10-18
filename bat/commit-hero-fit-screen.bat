@echo off
echo ========================================
echo    COMMIT - HERO FIT NA TELA 100%%
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
git commit -m "fix: Ajustar hero section para caber na tela com zoom 100%% - Hero com max-height 100vh para limitar altura - Titulo reduzido de 3.5rem para 2.8rem - Subtitulo reduzido de 1.3rem para 1.1rem - Botoes reduzidos: padding 14px 35px, font 0.95rem - Grid ajustado: 1.2fr texto, 0.8fr imagem - Gap reduzido de 4rem para 3rem - Foto max-width 400px e max-height 550px - Padding-top 100px e padding-bottom 3rem - Margin-bottom dos elementos reduzido - Tudo cabe na viewport agora"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Hero section ajustada para 100vh
    echo ✅ Todo conteudo cabe na tela
    echo ✅ Layout otimizado
    echo.
    echo AJUSTES APLICADOS:
    echo.
    echo DIMENSOES:
    echo - Hero: max-height 100vh ^(limite de altura^)
    echo - Titulo: 2.8rem ^(antes 3.5rem^)
    echo - Subtitulo: 1.1rem ^(antes 1.3rem^)
    echo - Botoes: 14px x 35px ^(antes 20px x 50px^)
    echo - Foto: max 400px x 550px
    echo.
    echo GRID LAYOUT:
    echo - Coluna texto: 1.2fr ^(60%% do espaco^)
    echo - Coluna imagem: 0.8fr ^(40%% do espaco^)
    echo - Gap: 3rem ^(antes 4rem^)
    echo - Max-width container: 1400px
    echo.
    echo ESPACAMENTO:
    echo - Padding-top: 100px ^(antes 120px^)
    echo - Padding-bottom: 3rem ^(antes 6rem^)
    echo - Titulo margin-bottom: 1.5rem
    echo - Subtitulo margin-bottom: 2rem
    echo - Botoes margin-bottom: 0
    echo.
    echo IMAGEM:
    echo - Max-width: 400px
    echo - Max-height: 550px
    echo - Object-fit: cover
    echo - Borda dourada: 4px
    echo.
    echo RESULTADO:
    echo - Tudo cabe na tela com zoom 100%%
    echo - Nao precisa scroll na hero
    echo - Layout balanceado e elegante
    echo - Responsivo mantido
    echo.
    echo Aguarde 2-3 minutos e teste com zoom 100%%:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Hero agora cabe perfeitamente na tela! ✅📐
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
