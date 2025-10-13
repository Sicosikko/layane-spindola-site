@echo off
echo ========================================
echo    PUSH DA REESTRUTURACAO PARA GITHUB
echo ========================================
echo.

echo Verificando status do Git...
git status

echo.
echo Adicionando todos os arquivos da nova estrutura...
git add .

echo.
echo Fazendo commit da reestruturacao completa...
git commit -m "refactor: Reestruturar organizacao dos arquivos em pastas

- Criada pasta 'html/' para arquivos HTML
- Criada pasta 'css/' para arquivos CSS  
- Criada pasta 'javascript/' para arquivos JS
- Criada pasta 'md/' para documentacao Markdown
- Criada pasta 'bat/' para scripts batch
- Criada pasta 'txt/' para arquivos de texto
- Criado index.html na raiz para resolver 404 do Netlify
- Atualizado _redirects para nova estrutura
- Corrigidas referencias CSS e JS nos HTMLs
- Organizacao mais limpa e profissional

Estrutura final:
- html/ (index.html, exemplo-curso.html)
- css/ (styles.css)
- javascript/ (script.js, config.js)
- md/ (documentacao completa)
- bat/ (scripts de automação)
- txt/ (comandos e instruções)
- raiz/ (index.html, configurações de deploy)

Problemas resolvidos:
- Page not found no Netlify
- Estrutura desorganizada
- Referencias quebradas
- Deploy nao funcionando"

echo.
echo Fazendo push para GitHub...
git push origin main

echo.
echo ========================================
echo    PUSH REALIZADO COM SUCESSO!
echo ========================================
echo.
echo Estrutura enviada para GitHub:
echo - html/ - Arquivos HTML
echo - css/ - Arquivos CSS
echo - javascript/ - Arquivos JavaScript
echo - md/ - Documentacao
echo - bat/ - Scripts de automação
echo - txt/ - Arquivos de texto
echo - raiz/ - index.html e configurações
echo.
echo Proximos passos:
echo 1. Verificar se a estrutura aparece no GitHub
echo 2. Aguardar deploy automatico no Netlify
echo 3. Testar se o site carrega corretamente
echo 4. Verificar se todos os links funcionam
echo.
echo Pressione qualquer tecla para continuar...
pause >nul
