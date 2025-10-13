@echo off
echo ========================================
echo    COMMIT DA REESTRUTURACAO DE PASTAS
echo ========================================
echo.

echo Verificando estrutura atual...
dir /b

echo.
echo Adicionando todos os arquivos da nova estrutura...
git add .

echo.
echo Fazendo commit da reestruturacao...
git commit -m "refactor: Reestruturar organizacao dos arquivos em pastas

- Criada pasta 'html/' para arquivos HTML
- Criada pasta 'css/' para arquivos CSS
- Criada pasta 'javascript/' para arquivos JS
- Criada pasta 'md/' para documentacao Markdown
- Criada pasta 'bat/' para scripts batch
- Criada pasta 'txt/' para arquivos de texto
- Mantidos arquivos de configuracao na raiz
- Organizacao mais limpa e profissional
- Facilita manutencao e navegacao do projeto

Estrutura final:
- html/ (index.html, exemplo-curso.html)
- css/ (styles.css)
- javascript/ (script.js, config.js)
- md/ (documentacao completa)
- bat/ (scripts de automação)
- txt/ (comandos e instruções)
- raiz/ (configurações de deploy)"

echo.
echo ========================================
echo    COMMIT REALIZADO COM SUCESSO!
echo ========================================
echo.
echo Estrutura organizada:
echo - html/ - Arquivos HTML
echo - css/ - Arquivos CSS
echo - javascript/ - Arquivos JavaScript
echo - md/ - Documentacao
echo - bat/ - Scripts de automação
echo - txt/ - Arquivos de texto
echo.
echo Proximos passos:
echo 1. Fazer push para GitHub
echo 2. Verificar se a estrutura está online
echo 3. Atualizar links se necessário
echo.
echo Para fazer push, execute:
echo git push origin main
echo.
echo Pressione qualquer tecla para continuar...
pause >nul
