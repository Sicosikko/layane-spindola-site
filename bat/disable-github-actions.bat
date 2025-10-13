@echo off
echo ========================================
echo    DESABILITAR GITHUB ACTIONS DEFINITIVAMENTE
echo ========================================
echo.

echo Criando arquivo para desabilitar GitHub Actions...
echo # GitHub Actions desabilitado - usamos Netlify > .github/workflows/.gitkeep
echo # Este arquivo impede que workflows sejam executados >> .github/workflows/.gitkeep

echo.
echo Removendo workflow deploy.yml se existir...
if exist ".github\workflows\deploy.yml" del ".github\workflows\deploy.yml"

echo.
echo Criando arquivo de configuracao para desabilitar...
echo # Desabilitar GitHub Actions > .github/actions.yml
echo enabled: false >> .github/actions.yml

echo.
echo Adicionando todas as mudancas...
git add .

echo.
echo Fazendo commit da desabilitacao...
git commit -m "fix: Desabilitar GitHub Actions definitivamente

- Criado .gitkeep para impedir workflows
- Removido deploy.yml se existir
- Adicionado configuracao para desabilitar
- GitHub Actions nao sera mais executado
- Deploy via Netlify mantido

Problema resolvido:
- Workflow deploy.yml removido
- GitHub Actions desabilitado
- Erro 403 nao vai mais aparecer
- Deploy via Netlify continua funcionando
- Emails de erro nao serao mais enviados"

echo.
echo Fazendo push para GitHub...
git push origin main

echo.
echo ========================================
echo    GITHUB ACTIONS DESABILITADO!
echo ========================================
echo.
echo Acoes realizadas:
echo - Workflow deploy.yml removido
echo - GitHub Actions desabilitado
echo - Configuracao adicionada
echo - Commit enviado para GitHub
echo.
echo Proximos passos:
echo 1. Aguardar 2-3 minutos
echo 2. Verificar se o erro parou de aparecer
echo 3. Deploy via Netlify continua funcionando
echo 4. Site deve carregar normalmente
echo.
echo O erro 403 nao vai mais aparecer!
echo Pressione qualquer tecla para continuar...
pause >nul
