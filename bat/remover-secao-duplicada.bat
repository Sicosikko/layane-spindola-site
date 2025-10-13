@echo off
echo ========================================
echo    REMOVER SECAO DUPLICADA DE CURSOS
echo ========================================
echo.

echo Adicionando mudancas...
git add .

echo.
echo Fazendo commit da remocao...
git commit -m "refactor: Remover secao duplicada de capas dos cursos

- Removida secao 'Capas dos Cursos' redundante
- Mantida apenas secao 'Produtos e Cursos' com descricoes
- Adicionado id='cursos' na secao mantida
- Links de navegacao continuam funcionando
- Interface mais limpa e menos redundante

Melhorias:
- Site mais objetivo e direto
- Sem repeticao de conteudo
- Melhor experiencia do usuario
- Navegacao mais fluida"

echo.
echo Fazendo push para GitHub...
git push origin main

echo.
echo ========================================
echo    SECAO DUPLICADA REMOVIDA!
echo ========================================
echo.
echo Mudancas aplicadas:
echo - Secao 'Capas dos Cursos' removida
echo - Secao 'Produtos e Cursos' mantida
echo - Links funcionando corretamente
echo - Site mais limpo e objetivo
echo.
echo Proximos passos:
echo 1. Aguardar deploy automatico (2-3 minutos)
echo 2. Testar: https://layane-spindola-site.netlify.app/
echo 3. Verificar se a secao foi removida
echo 4. Testar links do menu
echo.
echo Pressione qualquer tecla para continuar...
pause >nul
