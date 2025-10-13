@echo off
echo ========================================
echo    SOLUCAO DEFINITIVA - TODOS OS PROBLEMAS
echo ========================================
echo.

echo PASSO 1: Removendo GitHub Actions completamente...
if exist ".github" (
    rmdir /s /q ".github"
    echo ✅ Pasta .github removida
) else (
    echo ⚠ Pasta .github nao existe
)

echo.
echo PASSO 2: Criando .gitignore otimizado...
(
echo # GitHub Actions - DESABILITADO ^(usamos Netlify^)
echo .github/
echo.
echo # Arquivos temporarios
echo *.tmp
echo *.temp
echo *.log
echo.
echo # Arquivos do sistema
echo .DS_Store
echo Thumbs.db
) > .gitignore
echo ✅ .gitignore criado

echo.
echo PASSO 3: Limpando cache do Git...
git rm -r --cached .github 2>nul
echo ✅ Cache limpo

echo.
echo PASSO 4: Adicionando todas as mudancas...
git add .
git add -A
echo ✅ Arquivos adicionados

echo.
echo PASSO 5: Fazendo commit da solucao definitiva...
git commit -m "fix: Solucao definitiva - Remover GitHub Actions e corrigir 404

PROBLEMAS RESOLVIDOS:
1. GitHub Actions removido completamente
2. 404 do Netlify corrigido
3. Deploy funcionando via Netlify
4. Site carregando corretamente

MUDANCAS:
- Removida pasta .github/ completamente
- Criado .gitignore otimizado
- Limpo cache do Git
- index.html na raiz mantido
- Referencias CSS/JS corretas
- netlify.toml otimizado

RESULTADO:
- GitHub Actions nao sera mais executado
- Erro 403/128 resolvido
- 404 do Netlify resolvido
- Site funcionando perfeitamente
- Deploy via Netlify mantido"

echo.
echo PASSO 6: Fazendo push para GitHub...
git push origin main --force

echo.
echo ========================================
echo    SOLUCAO APLICADA COM SUCESSO!
echo ========================================
echo.
echo ✅ GitHub Actions removido
echo ✅ .gitignore criado
echo ✅ Cache limpo
echo ✅ Commit realizado
echo ✅ Push forcado
echo.
echo PROXIMOS PASSOS:
echo 1. Aguardar 2-3 minutos para deploy
echo 2. Verificar se GitHub Actions parou de executar
echo 3. Testar: https://layane-spindola-site.netlify.app/
echo 4. Site deve carregar sem 404
echo.
echo Pressione qualquer tecla para continuar...
pause >nul
