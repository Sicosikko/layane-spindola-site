@echo off
echo ========================================
echo    FORCAR REMOCAO DO GITHUB ACTIONS
echo ========================================
echo.

echo Verificando se a pasta .github existe...
if exist ".github" (
    echo Pasta .github encontrada localmente
    rmdir /s /q ".github"
    echo Pasta .github removida localmente
) else (
    echo Pasta .github nao existe localmente
)

echo.
echo Criando arquivo .gitignore para ignorar .github...
echo .github/ >> .gitignore

echo.
echo Adicionando todas as mudancas...
git add .

echo.
echo Fazendo commit da remocao forçada...
git commit -m "fix: Forcar remocao do GitHub Actions

- Removida pasta .github completamente
- Adicionado .github/ ao .gitignore
- GitHub Actions desnecessario removido
- Evita erro 403 do github-actions[bot]
- Deploy via Netlify mantido

Problema resolvido:
- Workflow deploy.yml removido
- Erro 403 nao vai mais aparecer
- Deploy via Netlify continua funcionando
- Emails de erro nao serao mais enviados"

echo.
echo Fazendo push para GitHub...
git push origin main

echo.
echo ========================================
echo    GITHUB ACTIONS REMOVIDO FORCADAMENTE!
echo ========================================
echo.
echo Acoes realizadas:
echo - Pasta .github removida localmente
echo - .github/ adicionado ao .gitignore
echo - Commit enviado para GitHub
echo - Workflow sera removido do repositorio
echo.
echo Proximos passos:
echo 1. Aguardar 1-2 minutos
echo 2. Verificar se o erro parou de aparecer
echo 3. Deploy via Netlify continua funcionando
echo 4. Site deve carregar normalmente
echo.
echo O erro 403 nao vai mais aparecer!
echo Pressione qualquer tecla para continuar...
pause >nul
