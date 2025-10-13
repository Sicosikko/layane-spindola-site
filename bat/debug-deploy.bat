@echo off
echo ========================================
echo    DEBUG DO PROBLEMA DE DEPLOY
echo ========================================
echo.

echo Adicionando arquivos de debug...
git add .

echo.
echo Fazendo commit dos arquivos de debug...
git commit -m "debug: Adicionar arquivos de teste para diagnosticar problema

- Criado test.html para teste basico do Netlify
- Criado debug.html para diagnostico detalhado
- Verificar se o problema e no HTML principal
- Testar se CSS e JS estao carregando
- Identificar causa do 404/page not found

Arquivos de debug:
- test.html - Teste simples de funcionamento
- debug.html - Diagnostico completo
- index.html - Site principal (verificar se tem erro)

Proximos passos:
1. Testar test.html no Netlify
2. Se funcionar, problema esta no index.html
3. Usar debug.html para identificar erro especifico
4. Corrigir problema encontrado"

echo.
echo Fazendo push para GitHub...
git push origin main

echo.
echo ========================================
echo    DEBUG ENVIADO COM SUCESSO!
echo ========================================
echo.
echo Arquivos de debug criados:
echo - test.html (teste basico)
echo - debug.html (diagnostico completo)
echo.
echo Proximos passos:
echo 1. Acesse: https://layane-spindola-site.netlify.app/test.html
echo 2. Se funcionar, acesse: https://layane-spindola-site.netlify.app/debug.html
echo 3. Use o debug.html para identificar o problema
echo 4. Verifique o console do navegador (F12) para erros
echo.
echo Se test.html nao funcionar:
echo - Problema e no deploy do Netlify
echo - Verificar configuracoes do Netlify
echo - Verificar se o build esta funcionando
echo.
echo Se test.html funcionar mas index.html nao:
echo - Problema e no HTML principal
echo - Verificar sintaxe e referencias
echo - Usar debug.html para diagnosticar
echo.
echo Pressione qualquer tecla para continuar...
pause >nul
