@echo off
echo ========================================
echo    COMMIT - AJUSTE DE ZOOM E ESPACAMENTO
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
git commit -m "fix: Ajustar espacamento hero para funcionar em zoom 100%% - Aumentado padding-top de 80px para 120px - Reduzido font-size do titulo de 2.8rem para 2.5rem - Aumentado margin-bottom dos botoes de 2rem para 3rem - Aumentado padding-bottom de 4rem para 6rem - Ajustado line-height do titulo para 1.3 - LinkedIn removido do rodape - Media queries otimizados para todos tamanhos de tela"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Problema de zoom resolvido
    echo ✅ Hero section ajustada
    echo ✅ Espacamento corrigido
    echo.
    echo CORRECOES APLICADAS:
    echo - Titulo nao sobrepoe mais o header em zoom 100%%
    echo - Botao "Baixa o Ebook" nao sobrepoe mais a segunda secao
    echo - Espacamento otimizado para todos os niveis de zoom
    echo - Responsivo para desktop, tablet e mobile
    echo.
    echo Aguarde 2-3 minutos e teste em zoom 100%%:
    echo https://layane-spindola-site.netlify.app/
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
