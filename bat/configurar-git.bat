@echo off
echo ========================================
echo    CONFIGURACAO GIT E COMMIT
echo ========================================
echo.

echo Configurando Git...
git init

echo.
echo Adicionando arquivos...
git add .

echo.
echo Fazendo commit...
git commit -m "feat: Site completo Layane Spindola - Portal profissional otimizado para conversao"

echo.
echo ========================================
echo    COMMIT REALIZADO COM SUCESSO!
echo ========================================
echo.
echo Proximos passos:
echo 1. Crie o repositorio no GitHub
echo 2. Execute os comandos de conexao
echo 3. Faça o push
echo.
echo Comandos para executar:
echo.
echo git remote add origin https://github.com/SEU_USUARIO/layane-spindola-site.git
echo git branch -M main
echo git push -u origin main
echo.
echo Pressione qualquer tecla para sair...
pause >nul
