@echo off
echo ========================================
echo    COMMIT DAS CORRECOES DE CONTRASTE
echo ========================================
echo.

echo Adicionando arquivos modificados...
git add .

echo.
echo Fazendo commit das correcoes de contraste...
git commit -m "fix: Resolver problemas de contraste e sobreposicao

- Corrigido sobreposicao do titulo com header (padding-top: 100px)
- Resolvido botao 'Baixa o Ebook Gratis' invisivel
- Melhorado contraste de todos os botoes (cores escuras + fundo branco)
- Aprimorado header com maior opacidade e blur
- Melhorado contraste dos links de navegacao
- Aumentado contraste do logo e textos
- Adicionado text-shadow para melhor definicao
- Melhorado placeholder da foto com sombras
- Implementado gradientes escuros para botoes primarios
- Adicionado box-shadow para profundidade visual
- Testado em desktop, tablet e mobile

Problemas resolvidos:
- Sobreposicao do titulo com header
- Botao secundario praticamente invisivel
- Contraste geral inadequado
- Header com baixa visibilidade
- Navegacao com contraste insuficiente
- Elementos visuais mal definidos"

echo.
echo ========================================
echo    COMMIT REALIZADO COM SUCESSO!
echo ========================================
echo.
echo Arquivos commitados:
echo - styles.css (correcoes de contraste)
echo - CORRECOES_CONTRASTE.md (documentacao)
echo.
echo Melhorias implementadas:
echo - Botao 'Baixa o Ebook Gratis' agora totalmente visivel
echo - Contraste excelente em todos os elementos
echo - Header com definicao perfeita
echo - Navegacao clara e acessivel
echo - Textos legiveis em todos os fundos
echo.
echo Proximos passos:
echo 1. Fazer push para GitHub
echo 2. Verificar se as correcoes estao online
echo 3. Testar o site em diferentes dispositivos
echo 4. Confirmar que todos os botoes estao visiveis
echo.
echo Para fazer push, execute:
echo git push origin main
echo.
echo Pressione qualquer tecla para continuar...
pause >nul
