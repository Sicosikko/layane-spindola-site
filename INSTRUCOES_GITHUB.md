# 🚀 Como Fazer Commit e Push para GitHub

## 📋 Passo a Passo Completo

### 1. **Execute o Script Automático**
- Clique duas vezes no arquivo `git-commit.bat`
- Isso fará o commit inicial dos arquivos

### 2. **Crie o Repositório no GitHub**
1. Acesse [github.com](https://github.com)
2. Clique em **"New repository"** (botão verde)
3. Nome: `layane-spindola-site`
4. Descrição: `Site profissional da terapeuta naturalista Layane Spindola`
5. Marque **"Public"**
6. **NÃO** marque "Add a README file"
7. Clique em **"Create repository"**

### 3. **Conecte o Repositório Local com o GitHub**
Execute estes comandos no terminal (PowerShell ou CMD):

```bash
# Navegue até a pasta do projeto
cd "C:\Users\gleis\OneDrive\Documentos\Projetos freelas\Layane\Site Layane"

# Conecte com o repositório do GitHub
git remote add origin https://github.com/SEU_USUARIO/layane-spindola-site.git

# Renomeie a branch para main
git branch -M main

# Faça o push para o GitHub
git push -u origin main
```

**⚠️ IMPORTANTE**: Substitua `SEU_USUARIO` pelo seu username do GitHub!

### 4. **Verifique se Funcionou**
- Acesse seu repositório no GitHub
- Você deve ver todos os arquivos do site
- O commit deve aparecer no histórico

---

## 🔧 Comandos Alternativos (se der erro)

### Se der erro de autenticação:
```bash
# Configure seu nome e email
git config --global user.name "Seu Nome"
git config --global user.email "seu.email@gmail.com"

# Tente novamente
git push -u origin main
```

### Se der erro de repositório:
```bash
# Verifique se o repositório existe
git remote -v

# Se necessário, remova e adicione novamente
git remote remove origin
git remote add origin https://github.com/SEU_USUARIO/layane-spindola-site.git
```

### Se der erro de branch:
```bash
# Crie a branch main
git checkout -b main
git push -u origin main
```

---

## 📁 Arquivos que Serão Commitados

- ✅ `index.html` - Página principal
- ✅ `styles.css` - Estilos CSS
- ✅ `script.js` - JavaScript
- ✅ `config.js` - Configurações
- ✅ `exemplo-curso.html` - Template de curso
- ✅ `README.md` - Documentação
- ✅ `DEPLOY.md` - Guia de deploy
- ✅ `PREVIEW_REMOTO.md` - Guia de preview
- ✅ `COMO_VISUALIZAR.md` - Instruções rápidas
- ✅ `.gitignore` - Controle de versão
- ✅ `netlify.toml` - Configuração Netlify
- ✅ `vercel.json` - Configuração Vercel
- ✅ `_redirects` - Redirecionamentos
- ✅ `deploy.bat` - Script de deploy
- ✅ `git-commit.bat` - Script de commit

---

## 🎯 Após o Push

### 1. **Deploy Automático via GitHub Pages**
- Vá em **Settings** > **Pages**
- Source: **Deploy from a branch**
- Branch: **main**
- Folder: **/ (root)**
- Aguarde 5-10 minutos
- URL: `https://SEU_USUARIO.github.io/layane-spindola-site`

### 2. **Deploy via Netlify (Recomendado)**
- Acesse [netlify.com](https://netlify.com)
- Conecte com GitHub
- Selecione o repositório `layane-spindola-site`
- Deploy automático
- URL personalizada

### 3. **Deploy via Vercel**
- Acesse [vercel.com](https://vercel.com)
- Conecte com GitHub
- Importe o repositório
- Deploy automático

---

## 🚨 Solução de Problemas

### Erro: "Repository not found"
- Verifique se o repositório existe no GitHub
- Confirme se o nome está correto
- Verifique se você tem permissão

### Erro: "Authentication failed"
- Configure suas credenciais Git
- Use Personal Access Token se necessário

### Erro: "Branch not found"
- Crie a branch main primeiro
- Use `git checkout -b main`

---

## ✅ Checklist Final

- [ ] Script `git-commit.bat` executado
- [ ] Repositório criado no GitHub
- [ ] Comandos de push executados
- [ ] Arquivos visíveis no GitHub
- [ ] Deploy realizado (Netlify/Vercel/GitHub Pages)
- [ ] Site acessível via URL
- [ ] Testado em diferentes dispositivos

---

## 🎉 Resultado

Após seguir todos os passos, você terá:

- ✅ **Repositório no GitHub** com todo o código
- ✅ **Site online** e acessível
- ✅ **Deploy automático** a cada mudança
- ✅ **URL pública** para compartilhar
- ✅ **Controle de versão** completo
- ✅ **Fácil manutenção** e atualizações

**Agora o site da Layane está no GitHub e pode ser visualizado remotamente!** 🌍✨
