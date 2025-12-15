@echo off
chcp 65001 >nul
echo ========================================
echo COMMIT: Ajuste Botao Educadora
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
git commit -m "fix: ajuste botao secao educadora - Copy alterada: Veja meus cursos e programas (generica) - Link: #cursos (ancora para secao de produtos) - Removida regra CSS obsoleta educadora-description"
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
echo ✅ BOTAO EDUCADORA:
echo    - Copy: Veja meus cursos e programas
echo    - Link: #cursos (ancora)
echo    - Nao cita curso especifico
echo.
echo ✅ CSS:
echo    - Removida regra obsoleta educadora-description
echo    - Mantido estilo do botao
echo.
echo Aguarde 2-3 minutos para o Netlify atualizar.
echo.

pause

