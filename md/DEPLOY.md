# Guia de Deploy - Site Layane Spindola

## 🚀 Como Colocar o Site no Ar

### Opção 1: Hospedagem Gratuita (Recomendada para começar)

#### Netlify (Mais Fácil)
1. Acesse [netlify.com](https://netlify.com)
2. Crie uma conta gratuita
3. Arraste a pasta do site para a área de deploy
4. Configure o domínio personalizado (opcional)
5. Pronto! Site no ar em minutos

#### Vercel
1. Acesse [vercel.com](https://vercel.com)
2. Conecte sua conta GitHub
3. Faça upload dos arquivos
4. Deploy automático

### Opção 2: Hospedagem Paga (Para sites profissionais)

#### Hostinger, HostGator, ou similar
1. Contrate um plano de hospedagem
2. Acesse o painel de controle (cPanel)
3. Faça upload dos arquivos via File Manager ou FTP
4. Configure o domínio

## ⚙️ Configurações Importantes

### 1. Google Analytics
```html
<!-- Substitua GA_MEASUREMENT_ID pelo ID real -->
<script async src="https://www.googletagmanager.com/gtag/js?id=SEU_ID_AQUI"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'SEU_ID_AQUI');
</script>
```

### 2. Formulário de Ebook
Configure integração com:
- **Mailchimp**: Para captura de emails
- **RD Station**: Para automação de marketing
- **Zapier**: Para conectar diferentes ferramentas

### 3. Domínio Personalizado
- Compre um domínio: `layanespindola.com`
- Configure DNS apontando para sua hospedagem
- Ative SSL/HTTPS (gratuito na maioria dos hosts)

## 📱 Testes Antes do Deploy

### Checklist de Testes
- [ ] Site responsivo em mobile
- [ ] Todos os links funcionando
- [ ] Formulário de ebook validando
- [ ] Imagens carregando
- [ ] Animações suaves
- [ ] Navegação funcionando
- [ ] CTAs clicáveis

### Ferramentas de Teste
- **Google PageSpeed Insights**: Teste de velocidade
- **Google Mobile-Friendly Test**: Teste mobile
- **GTmetrix**: Análise completa de performance

## 🖼️ Adicionando Imagens Reais

### Imagens Necessárias
1. **Foto da Layane** (hero e sobre)
   - Tamanho: 800x600px mínimo
   - Formato: JPG ou WebP
   - Otimizada para web

2. **Capas dos Cursos**
   - Tamanho: 400x300px
   - Design atrativo
   - Consistente com a marca

3. **Fotos dos Testemunhos**
   - Tamanho: 200x200px
   - Formato circular
   - Boa qualidade

### Como Otimizar Imagens
- Use [TinyPNG](https://tinypng.com) para compressão
- Converta para WebP quando possível
- Redimensione antes de fazer upload

## 📧 Configuração de Email

### Mailchimp (Gratuito até 2000 contatos)
1. Crie conta no Mailchimp
2. Crie uma lista para leads
3. Configure formulário de captura
4. Crie sequência de emails de boas-vindas

### RD Station (Pago, mais completo)
1. Configure conta
2. Crie landing page
3. Configure automações
4. Integre com formulário

## 🔧 Personalizações Fáceis

### Alterar Cores
Edite no arquivo `styles.css`:
```css
:root {
    --primary-color: #4a7c59;
    --secondary-color: #6b9b7a;
    --accent-color: #2c5530;
}
```

### Alterar Textos
Edite no arquivo `index.html` ou use o `config.js` para centralizar.

### Adicionar Páginas
Use o `exemplo-curso.html` como base para criar páginas dos cursos.

## 📊 Monitoramento

### Google Analytics
- Configure eventos de conversão
- Monitore tráfego e comportamento
- Acompanhe conversões de ebook

### Google Search Console
- Verifique indexação
- Monitore palavras-chave
- Acompanhe performance SEO

## 🚨 Problemas Comuns

### Site não carrega
- Verifique se todos os arquivos foram enviados
- Confirme configuração de DNS
- Teste em navegador anônimo

### Formulário não funciona
- Verifique integração com email marketing
- Teste validação JavaScript
- Confirme configuração de servidor

### Site lento
- Otimize imagens
- Use CDN (Cloudflare gratuito)
- Comprima arquivos CSS/JS

## 📞 Suporte

Para dúvidas sobre o código:
- Verifique o `README.md`
- Consulte o `config.js` para configurações
- Teste localmente antes de fazer deploy

## 🎯 Próximos Passos

1. **Imediato**: Deploy básico e teste
2. **Semana 1**: Adicionar imagens reais
3. **Semana 2**: Configurar email marketing
4. **Semana 3**: Otimizar SEO e performance
5. **Mês 1**: Criar páginas dos cursos
6. **Mês 2**: Implementar blog
7. **Mês 3**: Adicionar área de membros

---

**Lembre-se**: O site está pronto para uso, mas sempre há espaço para melhorias e personalizações! 🌿
