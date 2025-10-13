@echo off
echo ========================================
echo    COMMIT DE TODAS AS ALTERACOES
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
git commit -m "design: Atualizar textos e melhorar layout do site - Hero title e subtitle atualizados - Secao Sobre Mim ajustada - Secao Educadora otimizada - Testemunhos com novos titulos - Cursos com descricoes melhoradas - Ebook com texto atualizado - LinkedIn removido do rodape - Botoes centralizados - Tamanho do titulo hero reduzido - Grid de cursos ajustado"

echo.
echo Fazendo push para GitHub...
git push origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo    SUCESSO!
    echo ========================================
    echo.
    echo ✅ Todas as mudancas enviadas
    echo ✅ Deploy iniciado no Netlify
    echo.
    echo Alteracoes aplicadas:
    echo - Titulo e subtitulo da hero
    echo - Secao Sobre Mim
    echo - Secao Educadora
    echo - Testemunhos de pacientes e alunos
    echo - Descricoes dos 4 cursos
    echo - Titulo e subtitulo do ebook
    echo - LinkedIn removido
    echo - Botoes centralizados
    echo - Layout melhorado
    echo.
    echo Aguarde 2-3 minutos e teste:
    echo https://layane-spindola-site.netlify.app/
    echo.
) else (
    echo.
    echo ========================================
    echo    ERRO!
    echo ========================================
    echo.
)

pause
