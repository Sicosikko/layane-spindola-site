@echo off
echo ========================================
echo    COMMIT DAS CORRECOES REALIZADAS
echo ========================================
echo.

echo Adicionando arquivos modificados...
git add .

echo.
echo Fazendo commit das correcoes...
git commit -m "fix: Corrigir sobreposicao do titulo com header e melhorar navegacao

- Adicionado padding-top na secao hero para compensar header fixo
- Corrigido navegacao suave com calculo dinamico de offset
- Melhorado menu mobile com z-index e fechamento multiplo
- Otimizado responsividade para todos os dispositivos
- Corrigido dropdown mobile para sempre visivel
- Adicionado fechamento com tecla Escape e redimensionamento
- Removido margin-top desnecessario das paginas de cursos
- Implementado validacoes e prevencao de bugs
- Testado em desktop, tablet e mobile

Problemas resolvidos:
- Sobreposicao do titulo com header
- Navegacao suave incorreta
- Menu mobile com problemas de usabilidade
- Responsividade inadequada
- Páginas de cursos com espacamento incorreto"

echo.
echo ========================================
echo    COMMIT REALIZADO COM SUCESSO!
echo ========================================
echo.
echo Arquivos commitados:
echo - styles.css (correcoes de CSS)
echo - script.js (melhorias de JavaScript)
echo - CORRECOES_REALIZADAS.md (documentacao)
echo.
echo Proximos passos:
echo 1. Fazer push para GitHub
echo 2. Verificar se as correcoes estao online
echo 3. Testar o site em diferentes dispositivos
echo.
echo Para fazer push, execute:
echo git push origin main
echo.
echo Pressione qualquer tecla para continuar...
pause >nul
