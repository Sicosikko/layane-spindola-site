@echo off
echo ========================================
echo    COMMIT - FORCAR TEMA CLARO SEMPRE
echo ========================================
echo.

echo Verificando status...
git status

echo.
echo Adicionando arquivos...
git add .
git add -A

echo.
echo Fazendo commit...
git commit -m "feat: Forcar tema claro em todo o site independente das preferencias do usuario - Meta tag: color-scheme light only adicionada em index.html e guia-pratico-naturopatia.html - CSS: color-scheme light only em :root, html e body - styles.css: Tema claro forcado no site principal - curso-landing.css: Tema claro forcado na landing page - Background: background-color ffffff explicito - RESULTADO: Cores originais mantidas sempre, sem mudanca por tema escuro do sistema"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! TEMA CLARO FORCADO!
    echo ========================================
    echo.
    echo ✅ Cores originais mantidas sempre!
    echo.
    echo IMPLEMENTACAO:
    echo.
    echo 1. META TAG HTML
    echo    ^<meta name="color-scheme" content="light only"^>
    echo    - index.html ✅
    echo    - guia-pratico-naturopatia.html ✅
    echo.
    echo 2. CSS :root
    echo    :root {
    echo        color-scheme: light only;
    echo    }
    echo    - styles.css ✅
    echo    - curso-landing.css ✅
    echo.
    echo 3. CSS html
    echo    html {
    echo        color-scheme: light only;
    echo    }
    echo    - styles.css ✅
    echo.
    echo 4. CSS body
    echo    body {
    echo        color-scheme: light only;
    echo        background-color: #ffffff;
    echo    }
    echo    - styles.css ✅
    echo    - curso-landing.css ✅
    echo.
    echo PROTECAO COMPLETA:
    echo ✅ Meta tag no HTML
    echo ✅ :root no CSS
    echo ✅ html no CSS
    echo ✅ body no CSS
    echo ✅ Background branco explicito
    echo.
    echo RESULTADO:
    echo ✅ Tema claro SEMPRE
    echo ✅ Cores originais mantidas
    echo ✅ Nao muda com tema escuro do sistema
    echo ✅ Nao muda com preferencias do navegador
    echo ✅ Experiencia consistente
    echo.
    echo ANTES:
    echo ❌ Cores mudavam com tema do sistema
    echo ❌ Modo escuro alterava design
    echo ❌ Experiencia inconsistente
    echo.
    echo DEPOIS:
    echo ✅ Cores SEMPRE as originais
    echo ✅ Tema claro SEMPRE ativo
    echo ✅ Design consistente
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo - Site principal: https://layane-spindola-site.netlify.app/
    echo - Landing page: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Teste com modo escuro do sistema ativo!
    echo As cores devem permanecer as mesmas! 🌿✨
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
