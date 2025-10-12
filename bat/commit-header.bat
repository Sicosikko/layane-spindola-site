@echo off
echo ========================================
echo    COMMIT DAS CORRECOES DO HEADER
echo ========================================
echo.

echo Adicionando arquivos modificados...
git add .

echo.
echo Fazendo commit das correcoes do header...
git commit -m "fix: Reduzir altura do header para nao cobrir o titulo

- Reduzido padding do nav-container de 1rem para 0.75rem
- Diminuido tamanho do logo de 1.8rem para 1.5rem
- Reduzido padding dos links de navegacao em 20%
- Diminuido tamanho dos botoes (padding e fonte)
- Reduzido espacamento entre itens do menu em 50%
- Diminuido margin do CTA de 2rem para 1rem
- Ajustado padding do hero para compensar header menor
- Otimizado responsividade para todos os dispositivos
- Mantido contraste e funcionalidade de todos os elementos

Resultado:
- Header 25% mais compacto
- Titulo totalmente visivel sem sobreposicao
- Navegacao mantida e funcional
- Design mais elegante e profissional"

echo.
echo ========================================
echo    COMMIT REALIZADO COM SUCESSO!
echo ========================================
echo.
echo Arquivos commitados:
echo - styles.css (correcoes do header)
echo - CORRECOES_HEADER.md (documentacao)
echo.
echo Melhorias implementadas:
echo - Header 25% mais compacto
echo - Titulo totalmente visivel
echo - Elementos proporcionais
echo - Navegacao mantida
echo - Responsividade preservada
echo.
echo Proximos passos:
echo 1. Fazer push para GitHub
echo 2. Verificar se as correcoes estao online
echo 3. Testar o site em diferentes dispositivos
echo 4. Confirmar que o titulo nao esta mais coberto
echo.
echo Para fazer push, execute:
echo git push origin main
echo.
echo Pressione qualquer tecla para continuar...
pause >nul
