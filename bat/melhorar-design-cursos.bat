@echo off
echo ========================================
echo    MELHORAR DESIGN DA SECAO DE CURSOS
echo ========================================
echo.

echo Verificando status do repositorio...
git status

echo.
echo Adicionando TODOS os arquivos modificados e novos...
git add .
git add -A

echo.
echo Fazendo commit das melhorias de design...
git commit -m "design: Melhorar layout da secao de cursos e corrigir contraste do botao - Grid ajustado 3+1 centralizado - Botao outline com contraste corrigido - Responsividade mantida"

if %errorlevel% equ 0 (
    echo.
    echo Fazendo push para GitHub...
    git push origin main
    
    if %errorlevel% equ 0 (
        echo.
        echo ========================================
        echo    MELHORIAS APLICADAS COM SUCESSO!
        echo ========================================
        echo.
        echo ✅ Layout de cursos melhorado
        echo ✅ Quarto card centralizado
        echo ✅ Contraste do botao corrigido
        echo ✅ Responsividade mantida
        echo ✅ Deploy automatico iniciado
        echo.
        echo Melhorias visuais:
        echo - Grid: 3 cursos em cima
        echo - Curso 4: Exatamente abaixo do curso 2 (centro)
        echo - Layout: Simetrico e harmonioso
        echo - Botao: Verde escuro visivel em fundo claro
        echo - Hover: Background verde com texto branco
        echo - Mobile: 1 coluna empilhada
        echo.
        echo Proximos passos:
        echo 1. Aguardar deploy automatico (2-3 minutos)
        echo 2. Testar: https://layane-spindola-site.netlify.app/
        echo 3. Verificar layout dos cursos
        echo 4. Testar botao de acao
        echo 5. Verificar responsividade mobile
        echo.
    ) else (
        echo.
        echo ========================================
        echo    ERRO AO FAZER PUSH!
        echo ========================================
        echo.
        echo Possivel causa:
        echo - Sem conexao com internet
        echo - Credenciais do Git incorretas
        echo - Conflitos no repositorio
        echo.
        echo Tente fazer push manualmente:
        echo git push origin main
        echo.
    )
) else (
    echo.
    echo ========================================
    echo    NENHUMA MUDANCA PARA COMMITAR
    echo ========================================
    echo.
    echo Todas as mudancas ja foram commitadas
    echo ou nao ha arquivos modificados.
    echo.
)

echo Pressione qualquer tecla para continuar...
pause >nul
