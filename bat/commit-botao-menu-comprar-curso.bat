@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Botao Menu Comprar Curso
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
git commit -m "feat: alterar botao menu headbar para comprar curso - Botao menu desktop: Pega Seu Ebook de Graça → Comprar Curso - Botao menu mobile: Pega Seu Ebook de Graça → Comprar Curso - Link alterado: #ebook → #inscricao (ancora CTA final) - Botao hero session: mantido QUERO SER UMA NATUROPATA AGORA - Menu: Produtos & Cursos + Vitalis Blend (mantido) - Objetivo: remeter diretamente a compra do curso"
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
echo BOTAO MENU ATUALIZADO!
echo ========================================
echo.
echo ✅ BOTAO MENU HEADBAR:
echo    - Desktop: Comprar Curso
echo    - Mobile: Comprar Curso
echo    - Link: #inscricao (CTA final)
echo.
echo ✅ BOTAO HERO SESSION:
echo    - Mantido: QUERO SER UMA NATUROPATA AGORA!
echo    - Icone: leaf (folha)
echo.
echo ✅ MENU DROPDOWN:
echo    - Produtos & Cursos
echo    - Vitalis Blend incluido
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo Depois teste: https://layane-spindola-site.netlify.app/html/guia-pratico-naturopatia.html
echo.
echo Botao do menu agora remete a compra do curso!
echo.

pause

