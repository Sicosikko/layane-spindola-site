@echo off
echo ========================================
echo    COMMIT - IMAGENS CURSOS QUADRADAS
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
git commit -m "fix: Ajustar imagens dos cursos para formato quadrado e zoom 100%% - Imagens com aspect-ratio 1:1 ^(quadradas^) - Height 100%% ao inves de 250px fixo - Border-radius reduzido para 12px - Padding cards reduzido de 2.5rem para 1.5rem - Margin-bottom imagem 1rem - Titulo 1.3rem - Descricao 0.9rem - Botao width 100%% e padding 12px - Section padding 4rem ao inves de 6rem - Titulo secao 2.2rem - Tudo cabe na tela zoom 100%%"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Imagens dos cursos ajustadas
    echo ✅ Formato quadrado aplicado
    echo ✅ Tudo cabe em zoom 100%%
    echo.
    echo AJUSTES APLICADOS:
    echo.
    echo IMAGENS:
    echo - Aspect-ratio: 1:1 ^(quadradas^)
    echo - Width: 100%%
    echo - Height: 100%%
    echo - Object-fit: cover
    echo - Border-radius: 12px ^(antes 15px^)
    echo - Margin-bottom: 1rem ^(antes 1.5rem^)
    echo.
    echo CARDS:
    echo - Padding: 1.5rem ^(antes 2.5rem^)
    echo - Border-radius: 20px
    echo - Box-shadow mantido
    echo - Hover effects mantidos
    echo.
    echo TEXTOS:
    echo - Titulo: 1.3rem, bold
    echo - Descricao: 0.9rem
    echo - Line-height otimizado
    echo - Margin reduzido
    echo.
    echo BOTOES:
    echo - Width: 100%% do card
    echo - Padding: 12px x 20px
    echo - Font-size: 0.9rem
    echo.
    echo SECAO:
    echo - Padding: 4rem ^(antes 6rem^)
    echo - Titulo: 2.2rem
    echo - Margin-bottom: 2.5rem
    echo.
    echo RESULTADO:
    echo - Imagens quadradas uniformes
    echo - Cards mais compactos
    echo - Texto legivel
    echo - Tudo visivel sem scroll
    echo - Grid mantido: 3 colunas + 1 centralizado
    echo.
    echo Aguarde 2-3 minutos e teste com zoom 100%%:
    echo https://layane-spindola-site.netlify.app/
    echo.
    echo Cursos agora com imagens quadradas perfeitas! ✅📐
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
