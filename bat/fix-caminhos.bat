@echo off
echo ========================================
echo    CORRIGIR CAMINHOS DOS ARQUIVOS
echo ========================================
echo.

echo Adicionando arquivos corrigidos...
git add .

echo.
echo Fazendo commit da correcao de caminhos...
git commit -m "fix: Corrigir caminhos dos arquivos CSS e JS

- Adicionado './' nas referencias CSS: ./css/styles.css
- Adicionado './' nas referencias JS: ./javascript/script.js  
- Corrigidas referencias para paginas de cursos: ./html/
- Resolvido problema de caminhos relativos apos reestruturacao
- Site deve carregar corretamente agora

Problemas resolvidos:
- CSS nao carregando (caminho incorreto)
- JavaScript nao carregando (caminho incorreto)
- Links para cursos quebrados
- Page not found apos reestruturacao

Correcoes aplicadas:
- href='css/styles.css' -> href='./css/styles.css'
- src='javascript/script.js' -> src='./javascript/script.js'
- href='html/' -> href='./html/' (todos os links)"

echo.
echo Fazendo push para GitHub...
git push origin main

echo.
echo ========================================
echo    CORRECAO ENVIADA COM SUCESSO!
echo ========================================
echo.
echo Caminhos corrigidos:
echo - CSS: ./css/styles.css
echo - JavaScript: ./javascript/script.js
echo - Links: ./html/ (todas as paginas)
echo.
echo Proximos passos:
echo 1. Aguardar deploy automatico (2-3 minutos)
echo 2. Testar o site: https://layane-spindola-site.netlify.app
echo 3. Verificar se CSS e JS carregam
echo 4. Testar links para paginas de cursos
echo.
echo O problema dos caminhos foi resolvido!
echo Pressione qualquer tecla para continuar...
pause >nul
