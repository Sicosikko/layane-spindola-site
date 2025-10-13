@echo off
echo ========================================
echo    REMOVER GITHUB ACTIONS DESNECESSARIO
echo ========================================
echo.

echo Removendo workflow do GitHub Actions...
if exist ".github\workflows\deploy.yml" (
    del ".github\workflows\deploy.yml"
    echo Arquivo deploy.yml removido
) else (
    echo Arquivo deploy.yml nao encontrado
)

if exist ".github\workflows" (
    rmdir ".github\workflows"
    echo Pasta workflows removida
)

if exist ".github" (
    rmdir ".github"
    echo Pasta .github removida
)

echo.
echo Adicionando mudancas...
git add .

echo.
echo Fazendo commit da remocao do GitHub Actions...
git commit -m "fix: Remover GitHub Actions desnecessario

- Removido workflow deploy.yml que causava erro 403
- GitHub Actions tentava fazer deploy para GitHub Pages
- Como estamos usando Netlify, o workflow e desnecessario
- Evita erro de permissao do github-actions[bot]
- Deploy continua funcionando via Netlify

Problema resolvido:
- Erro 403 do github-actions[bot]
- Workflow desnecessario removido
- Deploy via Netlify mantido"

echo.
echo Fazendo push para GitHub...
git push origin main

echo.
echo ========================================
echo    GITHUB ACTIONS REMOVIDO!
echo ========================================
echo.
echo Problema resolvido:
echo - Workflow desnecessario removido
echo - Erro 403 nao vai mais aparecer
echo - Deploy via Netlify continua funcionando
echo - Email de erro nao sera mais enviado
echo.
echo Proximos passos:
echo 1. Verificar se o erro parou de aparecer
echo 2. Deploy continua funcionando via Netlify
echo 3. Site deve carregar normalmente
echo.
echo Pressione qualquer tecla para continuar...
pause >nul
