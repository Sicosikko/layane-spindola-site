@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Ajustes Menu e Footer
echo ========================================
echo.

cd /d "%~dp0\.."

echo [1/4] Verificando status do Git...
git status
echo.

echo [2/4] Adicionando TODOS os arquivos modificados...
git add .
git add -A
if %errorlevel% neq 0 (
    echo ERRO: Falha ao adicionar arquivos!
    pause
    exit /b 1
)
echo Arquivos adicionados com sucesso!
echo.

echo [3/4] Fazendo commit...
git commit -m "fix: ajustes menu headbar e footer - Removido sublinhado: text-decoration none em nav-link e dropdown-menu - Removido sublinhado icones redes sociais: text-decoration none em social-link - Menu: Cursos e Programas → Produtos e Cursos - Adicionado produto Vitalis Blend no dropdown (desktop e mobile) - Link: /html/vitalis-blend.html"
if %errorlevel% neq 0 (
    echo AVISO: Nada para commitar ou erro ao commitar
    git status
    pause
    exit /b 0
)
echo Commit realizado com sucesso!
echo.

echo [4/4] Fazendo push para o repositório...
git push
if %errorlevel% neq 0 (
    echo ERRO: Falha ao fazer push!
    pause
    exit /b 1
)
echo Push realizado com sucesso!
echo.

echo ========================================
echo AJUSTES APLICADOS!
echo ========================================
echo.
echo ✅ MENU HEADBAR:
echo    - Sublinhado removido: text-decoration none
echo    - Nav-link: sem underline
echo    - Dropdown-menu: sem underline
echo.
echo ✅ FOOTER REDES SOCIAIS:
echo    - Sublinhado removido: text-decoration none
echo    - Social-link: sem underline
echo.
echo ✅ MENU DROPDOWN:
echo    - Texto: Cursos e Programas → Produtos e Cursos
echo    - Adicionado: Vitalis Blend
echo    - Link: /html/vitalis-blend.html
echo    - Desktop e mobile atualizados
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo.

pause

