// Configurações do Site Layane Spindola
// Este arquivo centraliza as configurações para facilitar personalizações

const SITE_CONFIG = {
    // Informações básicas
    site: {
        title: "Layane Spindola | Terapeuta Naturalista e Educadora em Saúde Integrativa",
        description: "Layane Spindola é terapeuta naturalista, especialista em nutrição e gastronomia, mestre em nutrição vegetariana. Já impactou mais de 10 mil pessoas com terapias naturalistas e saúde integrativa.",
        url: "https://layanespindola.com",
        keywords: "saúde integrativa, nutrição saudável, terapia naturalista, bem-estar, naturopatia prática, protocolos terapêuticos naturais, Layane Spindola"
    },

    // Informações da Layane
    layane: {
        name: "Layane Spindola",
        title: "Terapeuta Naturalista e Educadora em Saúde Integrativa",
        credentials: [
            "Terapeuta naturalista",
            "Especialista em Nutrição", 
            "Especialista em Gastronomia",
            "Mestre em Nutrição Vegetariana"
        ],
        stats: {
            pessoasImpactadas: 10000,
            palestrasRealizadas: 4000,
            anosExperiencia: 10
        }
    },

    // Cores do site
    colors: {
        primary: "#4a7c59",
        primaryLight: "#6b9b7a", 
        primaryDark: "#2c5530",
        secondary: "#e8f5e8",
        accent: "#f0f8f0",
        text: "#333",
        textLight: "#555",
        white: "#ffffff"
    },

    // Cursos e produtos
    cursos: [
        {
            id: "terapeuta-alta-performance",
            nome: "Terapeuta de Alta Performance",
            descricao: "Acabou de se formar e tá perdida no 'e agora'? Esse curso te molda pra lidar com tudo de cabeça erguida – da rotina pro impacto real no bem-estar dos outros.",
            link: "/terapeuta-alta-performance",
            icone: "fas fa-graduation-cap"
        },
        {
            id: "guia-pratico-naturopatia", 
            nome: "Guia Prático de Naturopatia",
            descricao: "Quer mergulhar na naturopatia sem enrolação? Aqui vai o mapa completo: terapias integrativas que te formam terapeuta e te botam pra atuar já, ajudando gente de verdade.",
            link: "/guia-pratico-naturopatia",
            icone: "fas fa-leaf"
        },
        {
            id: "programa-aceleracao-agape",
            nome: "Programa de Aceleração Ágape", 
            descricao: "Tá na hora de faturar de leve? Aprende redes sociais, vendas que fluem, gestão sem estresse – e mira nos R$3 mil em 90 dias, como terapeuta que brilha.",
            link: "/programa-aceleracao-agape",
            icone: "fas fa-rocket"
        },
        {
            id: "protocolos-terapeuticos",
            nome: "Protocolos Terapêuticos",
            descricao: "Mais de 60 receitas naturais que eu criei na raça, pra tratar de A a Z. Pega, aplica no dia a dia e vê a mágica acontecer nas terapias.",
            link: "/protocolos-terapeuticos", 
            icone: "fas fa-heart"
        }
    ],

    // Textos principais (para facilitar traduções futuras)
    textos: {
        hero: {
            titulo: "Olha, transformar o cansaço em energia de verdade? É mais simples do que você imagina – e eu já ajudei mais de 10 mil pessoas nisso.",
            subtitulo: "Eu sou Layane Spindola, terapeuta naturalista com um pé na nutrição que ama o dia a dia. Vamos deixar esse peso no estômago pra trás e trazer leveza de volta? Você merece isso, viu."
        },
        sobre: {
            titulo: "Quem sou eu, de verdade? Layane Spindola, a amiga que te guia pro equilíbrio sem complicação."
        },
        educadora: {
            titulo: "Como educadora, eu adoro ver gente como você se transformando em profissionais que realmente fazem diferença."
        },
        testemunhos: {
            pacientes: "Escuta o que rola com quem já andou comigo – histórias que aquecem o coração.",
            alunos: "Meus alunos? Eles viram o jogo na carreira – e contam tudo aqui."
        },
        cursos: {
            titulo: "Dá uma espiada nas capas dos meus cursos – clica na que te chama e vai direto pra página dela, sem rodeio.",
            produtos: "Meus cursos e guias? São como um empurrãozinho amigo pra você decolar na saúde e na carreira."
        },
        ebook: {
            titulo: "Ei, quer um mimo grátis? Meu ebook com truques pra bem-estar que cabem na sua vida louca.",
            descricao: "Só me passa seu email que eu mando na hora esse guia rapidinho – dicas que eu uso todo dia, uns protocolos iniciais pra testar e ideias pra virar o jogo na saúde sem esforço hercúleo. Imagina começar amanhã já sentindo a diferença? Fácil assim."
        }
    },

    // CTAs principais
    ctas: {
        hero: {
            primario: "Bora Ver Meus Cursos?",
            secundario: "Baixa o Ebook Grátis"
        },
        sobre: "Quer saber mais da minha história? Clica aqui e vem comigo.",
        educadora: "Pronta pra mentoria? Entra no Ágape e acelera isso.",
        testemunhos: {
            pacientes: "Sua vez de virar a página? Meus cursos te levam lá.",
            alunos: "Quer entrar pro time? Clica e começa."
        },
        cursos: {
            capas: "Qual vai ser a primeira? Escolhe e mergulha.",
            produtos: "Curiosa por mais? Dá uma olhada em tudo aqui."
        },
        ebook: "Manda Meu Ebook Agora, Vai!",
        header: "Pega Seu Ebook de Graça"
    },

    // Redes sociais
    redesSociais: {
        instagram: "#",
        facebook: "#", 
        youtube: "#",
        linkedin: "#"
    },

    // Analytics e tracking
    analytics: {
        googleAnalytics: "GA_MEASUREMENT_ID", // Substituir pelo ID real
        facebookPixel: "FB_PIXEL_ID", // Adicionar se necessário
        conversionEvents: {
            ebookDownload: "ebook_download",
            cursoInteresse: "curso_interesse",
            contato: "contato"
        }
    },

    // Configurações de formulário
    formulario: {
        ebook: {
            campos: ["nome", "email", "consentimento"],
            validacao: {
                email: /^[^\s@]+@[^\s@]+\.[^\s@]+$/,
                obrigatorios: ["nome", "email", "consentimento"]
            },
            mensagens: {
                sucesso: "Obrigada! Seu ebook foi enviado para seu email. Confira a caixa de entrada!",
                erro: "Por favor, preencha todos os campos e aceite os termos.",
                emailInvalido: "Por favor, insira um email válido."
            }
        }
    },

    // Configurações de animação
    animacoes: {
        duracao: 600, // ms
        delay: 100, // ms entre elementos
        threshold: 0.1, // Intersection Observer threshold
        rootMargin: "0px 0px -50px 0px"
    },

    // Breakpoints responsivos
    breakpoints: {
        mobile: 480,
        tablet: 768,
        desktop: 1200
    }
};

// Exportar configuração para uso global
if (typeof window !== 'undefined') {
    window.SITE_CONFIG = SITE_CONFIG;
}

// Para uso em Node.js (se necessário)
if (typeof module !== 'undefined' && module.exports) {
    module.exports = SITE_CONFIG;
}
