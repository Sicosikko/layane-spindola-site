@echo off
echo ========================================
echo    FIX - STATS HERO COM LOGO E ICONES
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
git commit -m "fix: Substituir NaN por logo ABRATH e icones nos stats da hero section - PROBLEMA: Contador JavaScript gerando NaN nos stats - Card 1: Logo ABRATH em background branco com border-radius - Card 2: Icone livro emoji 17 Modulos Completos - Card 3: Icone chapeu emoji 85 Aulas 100 EAD - CSS: stat-logo-wrapper com background branco e padding - Logo: object-fit contain com drop-shadow - JavaScript: Contador animado desabilitado - RESULTADO: Stats visiveis e bonitos sem NaN"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO! STATS CORRIGIDOS!
    echo ========================================
    echo.
    echo ✅ NaN removido e substituido!
    echo.
    echo CORRECOES APLICADAS:
    echo.
    echo 1. CARD ABRATH
    echo    Antes: NaN ❌
    echo    Depois: Logo ABRATH ✅
    echo    - Background branco 95%%
    echo    - Border-radius 12px
    echo    - Padding 12px
    echo    - Max-width 120px
    echo    - Height 80px
    echo    - Object-fit contain
    echo    - Drop-shadow suave
    echo.
    echo 2. CARD MODULOS
    echo    Antes: NaN ❌
    echo    Depois: 📚 17 ✅
    echo    - Icone livro emoji
    echo    - Numero 17
    echo    - Label Modulos Completos
    echo.
    echo 3. CARD AULAS
    echo    Antes: NaN ❌
    echo    Depois: 🎓 85 ✅
    echo    - Icone chapeu emoji
    echo    - Numero 85
    echo    - Label Aulas 100%% EAD
    echo.
    echo CSS ADICIONADO:
    echo.
    echo .stat-icon {
    echo     font-size: 2.5rem;
    echo     margin-bottom: 8px;
    echo }
    echo.
    echo .stat-logo-wrapper {
    echo     max-width: 120px;
    echo     height: 80px;
    echo     background: rgba^(255,255,255,0.95^);
    echo     border-radius: 12px;
    echo     padding: 12px;
    echo }
    echo.
    echo .abrath-logo {
    echo     width: 100%%;
    echo     height: 100%%;
    echo     object-fit: contain;
    echo     filter: drop-shadow^(0 2px 4px rgba^(0,0,0,0.1^)^);
    echo }
    echo.
    echo JAVASCRIPT:
    echo ❌ Contador animado DESABILITADO
    echo ✅ Numeros fixos no HTML
    echo ✅ Sem mais NaN
    echo.
    echo ESTRUTURA HTML:
    echo ^<div class="stat-item stat-logo"^>
    echo   ^<div class="stat-logo-wrapper"^>
    echo     ^<img src="logo-abrath.png" class="abrath-logo"^>
    echo   ^</div^>
    echo   ^<div class="stat-label"^>Certificado ABRATH^</div^>
    echo ^</div^>
    echo.
    echo ^<div class="stat-item"^>
    echo   ^<div class="stat-icon"^>📚^</div^>
    echo   ^<div class="stat-number"^>17^</div^>
    echo   ^<div class="stat-label"^>Modulos Completos^</div^>
    echo ^</div^>
    echo.
    echo RESULTADO:
    echo ✅ Logo ABRATH visivel e bonita
    echo ✅ Icones emoji nos stats
    echo ✅ Numeros fixos 17 e 85
    echo ✅ Design harmonioso
    echo ✅ Sem mais NaN
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
    echo.
    echo Stats perfeitos agora! 🌿✨
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
