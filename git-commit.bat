@echo off
echo ========================================
echo    COMMIT E PUSH PARA GITHUB
echo ========================================
echo.

echo Inicializando repositorio Git...
git init

echo.
echo Adicionando todos os arquivos...
git add .

echo.
echo Fazendo commit inicial...
git commit -m "feat: Site completo Layane Spindola - Portal profissional otimizado para conversao

- Site responsivo com design moderno e acolhedor
- Cores verde/azul para evocar vitalidade e confianca
- Copy persuasivo focado em conversao
- 4 secoes principais: Hero, Sobre, Cursos, Ebook
- Formulario de captura de leads funcional
- SEO otimizado com meta tags completas
- Animações suaves e interatividade
- Configuracao para deploy (Netlify, Vercel, GitHub Pages)
- Pronto para producao"

echo.
echo ========================================
echo    CONFIGURACAO DO REPOSITORIO
echo ========================================
echo.
echo Para conectar com sua conta do GitHub:
echo.
echo 1. Acesse: https://github.com
echo 2. Crie um novo repositorio chamado: layane-spindola-site
echo 3. Copie a URL do repositorio
echo 4. Execute os comandos abaixo:
echo.
echo git remote add origin https://github.com/SEU_USUARIO/layane-spindola-site.git
echo git branch -M main
echo git push -u origin main
echo.
echo ========================================
echo    COMANDOS PARA EXECUTAR MANUALMENTE
echo ========================================
echo.
echo Copie e cole estes comandos no terminal:
echo.
echo git remote add origin https://github.com/SEU_USUARIO/layane-spindola-site.git
echo git branch -M main
echo git push -u origin main
echo.
echo (Substitua SEU_USUARIO pelo seu username do GitHub)
echo.
echo Pressione qualquer tecla para continuar...
pause >nul

echo.
echo ========================================
echo    COMMIT REALIZADO COM SUCESSO!
echo ========================================
echo.
echo Arquivos commitados:
echo - index.html (pagina principal)
echo - styles.css (estilos)
echo - script.js (interatividade)
echo - config.js (configuracoes)
echo - exemplo-curso.html (template)
echo - README.md (documentacao)
echo - DEPLOY.md (guia de deploy)
echo - PREVIEW_REMOTO.md (guia de preview)
echo - COMO_VISUALIZAR.md (instrucoes rapidas)
echo - .gitignore (controle de versao)
echo - netlify.toml (configuracao Netlify)
echo - vercel.json (configuracao Vercel)
echo - _redirects (redirecionamentos)
echo - deploy.bat (script de deploy)
echo - git-commit.bat (este arquivo)
echo.
echo Proximos passos:
echo 1. Crie o repositorio no GitHub
echo 2. Execute os comandos de push
echo 3. Faça o deploy via Netlify ou Vercel
echo 4. Compartilhe a URL com Layane
echo.
echo Pressione qualquer tecla para sair...
pause >nul
