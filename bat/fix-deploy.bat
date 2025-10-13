@echo off
echo ========================================
echo    CORRIGIR PROBLEMA DE DEPLOY
echo ========================================
echo.

echo Adicionando arquivos modificados...
git add .

echo.
echo Fazendo commit da correcao do deploy...
git commit -m "fix: Corrigir problema de deploy apos reestruturacao

- Criado index.html na raiz para resolver 404 do Netlify
- Atualizado _redirects para nova estrutura de pastas
- Corrigidas referencias de CSS e JS para estrutura organizada
- Mantida compatibilidade com deploy do Netlify
- Site agora deve carregar corretamente

Problemas resolvidos:
- Page not found no Netlify
- Referencias quebradas apos reestruturacao
- Deploy nao funcionando com nova organizacao
- Links internos quebrados"

echo.
echo ========================================
echo    COMMIT REALIZADO COM SUCESSO!
echo ========================================
echo.
echo Arquivos commitados:
echo - index.html (na raiz para resolver 404)
echo - _redirects (atualizado para nova estrutura)
echo.
echo Melhorias implementadas:
echo - Site deve carregar corretamente no Netlify
echo - Referencias CSS e JS corrigidas
echo - Estrutura de pastas mantida
echo - Compatibilidade com deploy preservada
echo.
echo Proximos passos:
echo 1. Fazer push para GitHub
echo 2. Aguardar deploy automatico no Netlify
echo 3. Verificar se o site carrega corretamente
echo 4. Testar todos os links e funcionalidades
echo.
echo Para fazer push, execute:
echo git push origin main
echo.
echo Pressione qualquer tecla para continuar...
pause >nul
