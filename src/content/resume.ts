import Icon0 from '~icons/simple-icons/python'
import Icon1 from '~icons/simple-icons/flask'
import Icon2 from '~icons/simple-icons/flutter'
import Icon3 from '~icons/simple-icons/vuedotjs'
import Icon4 from '~icons/simple-icons/angular'
import Icon5 from '~icons/simple-icons/springboot'
import Icon6 from '~icons/simple-icons/nodedotjs'
import Icon7 from '~icons/simple-icons/openjdk'
import Icon8 from '~icons/simple-icons/odoo'
import Icon9 from '~icons/simple-icons/docker'
import Icon10 from '~icons/simple-icons/terraform'
import Icon11 from '~icons/simple-icons/microsoftazure'
import Icon12 from '~icons/simple-icons/linux'
import Icon13 from '~icons/simple-icons/git'
import Icon14 from '~icons/lucide/workflow'
import Icon15 from '~icons/lucide/database'
import Icon16 from '~icons/simple-icons/pandas'
import Icon17 from '~icons/simple-icons/scikitlearn'
import Icon18 from '~icons/simple-icons/digitalocean'

export const locales = ['fr', 'en'] as const
export type Locale = (typeof locales)[number]

export function isLocale(value: string): value is Locale {
  return (locales as readonly string[]).includes(value)
}

export const CONTACT = {
  email: 'atidiane741@gmail.com',
  phone: '+221 78 170 61 84',
  github: 'https://github.com/atidiane741',
  linkedin: 'https://www.linkedin.com/in/cheikh-ahmed-tijani-traore',
}

export const SKILLS = [
  { name: 'Python', icon: Icon0 },
  { name: 'Spring Boot', icon: Icon5 },
  { name: 'Flutter', icon: Icon2 },
  { name: 'Vue.js', icon: Icon3 },
  { name: 'Angular', icon: Icon4 },
  { name: 'Node.js', icon: Icon6 },
  { name: 'Java', icon: Icon7 },
  { name: 'Odoo', icon: Icon8 },
  { name: 'Docker', icon: Icon9 },
  { name: 'Terraform', icon: Icon10 },
  { name: 'Azure', icon: Icon11 },
  { name: 'DigitalOcean', icon: Icon18 },
  { name: 'Linux', icon: Icon12 },
  { name: 'Git', icon: Icon13 },
  { name: 'CI/CD', icon: Icon14 },
  { name: 'Databases', icon: Icon15 },
  { name: 'Pandas', icon: Icon16 },
  { name: 'Scikit-learn', icon: Icon17 },
]

type Job = {
  company: string
  title: string
  period: string
  location: string
  current?: boolean
  highlights: string[]
}

type Copy = {
  ui: Record<string, string>
  role: string
  summary: string
  about: string[]
  work: Job[]
  education: { school: string; degree: string; period: string }[]
  awards: { name: string; issuer: string; meta: string }[]
}

const FR: Copy = {
  ui: {
    about: 'À propos',
    work: 'Expériences',
    skills: 'Compétences',
    education: 'Formation',
    awards: 'Projets',
    contact: 'Contact',
    contactTitle: 'Parlons-en',
    contactLead: 'Consultance technique, intégration Odoo, ou développement sur-mesure (Web, Mobile, Backend).',
    downloadCv: 'Télécharger le CV',
    rights: 'Tous droits réservés.',
    current: 'En cours',
  },
  role: 'Fullstack Developer & Consultant Technique',
  summary: 'Développeur Full-stack et Consultant avec une expertise en backend, DevOps et intégration Odoo.',
  about: [
    'Consultant technique et développeur full-stack expérimenté basé à Dakar.',
    'J’interviens sur la conception d’architectures, le développement (Spring Boot, Vue.js, Flutter) et les infrastructures (Docker, Azure).',
    'Top committer au Sénégal, passionné par la performance, la sécurité et la qualité logicielle.'
  ],
  work: [
    {
      company: 'LIC',
      title: 'Fullstack Developer',
      period: 'En cours',
      location: 'Dakar, Sénégal',
      current: true,
      highlights: [
        'Conception et développement web.',
        'Mise en place d’interfaces avec Nuxt 3, GSAP et Tailwind.',
      ],
    },
    {
      company: 'G&G Professional Services',
      title: 'Consultant Informatique & Analyste SOC',
      period: 'En cours',
      location: 'Dakar, Sénégal',
      current: true,
      highlights: [
        'Développement et personnalisation de modules Odoo (Python API).',
        'Gestion d’infrastructures, sécurité (Microsoft 365, SOC, MFA) et durcissement des systèmes.',
      ],
    },
    {
      company: 'Teksi Inc',
      title: 'Backend & DevOps Junior',
      period: 'En cours',
      location: 'Montréal, Canada (Remote)',
      current: true,
      highlights: [
        'Développement backend avec SpringBoot pour la plateforme SaaS Copak.',
        'Intégration continue et déploiement avec Docker et DigitalOcean.',
      ],
    },
  ],
  education: [
    {
      school: 'Institut Supérieur d’Informatique (ISI)',
      degree: 'Licence en Génie Logiciel',
      period: '2023 – 2025',
    },
    {
      school: 'Lycée Ba Souley (Mauritanie)',
      degree: 'Baccalauréat Scientifique',
      period: '2018',
    },
  ],
  awards: [
    {
      name: 'Koala',
      issuer: 'Finance Management App',
      meta: 'Application de gestion financière axée sur la vie privée. Machine learning sur appareil, Flutter, Python.',
    },
    {
      name: 'Gnawalma',
      issuer: 'Tailor Shop App',
      meta: 'Application Flutter, Firebase, NestJs avec architecture offline-first.',
    },
    {
      name: 'Jenv CLI',
      issuer: 'Outil Cross-Platform',
      meta: 'Outil de gestion des versions JDK développé en Python.',
    },
  ],
}

const EN: Copy = {
  ui: {
    about: 'About',
    work: 'Experience',
    skills: 'Skills',
    education: 'Education',
    awards: 'Projects',
    contact: 'Contact',
    contactTitle: 'Get in touch',
    contactLead: 'Technical consulting, Odoo integration, or custom development (Web, Mobile, Backend).',
    downloadCv: 'Download CV',
    rights: 'All rights reserved.',
    current: 'Current',
  },
  role: 'Fullstack Developer & Technical Consultant',
  summary: 'Full-stack Developer and Consultant with expertise in backend, DevOps, and Odoo integration.',
  about: [
    'Technical consultant and experienced full-stack developer based in Dakar.',
    'I focus on architectural design, development (Spring Boot, Vue.js, Flutter), and infrastructure (Docker, Azure).',
    'Top committer in Senegal, passionate about performance, security, and software quality.'
  ],
  work: [
    {
      company: 'LIC',
      title: 'Fullstack Developer',
      period: 'Current',
      location: 'Dakar, Senegal',
      current: true,
      highlights: [
        'Web design and development.',
        'Building interfaces with Nuxt 3, GSAP, and Tailwind.',
      ],
    },
    {
      company: 'G&G Professional Services',
      title: 'IT Consultant & SOC Analyst',
      period: 'Current',
      location: 'Dakar, Senegal',
      current: true,
      highlights: [
        'Development and customization of Odoo modules (Python API).',
        'Infrastructure management, security (Microsoft 365, SOC, MFA), and system hardening.',
      ],
    },
    {
      company: 'Teksi Inc',
      title: 'Backend & DevOps Junior',
      period: 'Current',
      location: 'Montreal, Canada (Remote)',
      current: true,
      highlights: [
        'Backend development with SpringBoot for the Copak SaaS platform.',
        'Continuous integration and deployment with Docker and DigitalOcean.',
      ],
    },
  ],
  education: [
    {
      school: 'Institut Supérieur d’Informatique (ISI)',
      degree: 'Bachelor in Software Engineering',
      period: '2023 – 2025',
    },
    {
      school: 'Lycée Ba Souley (Mauritania)',
      degree: 'Scientific Baccalaureate',
      period: '2018',
    },
  ],
  awards: [
    {
      name: 'Koala',
      issuer: 'Finance Management App',
      meta: 'Privacy-focused financial management app. On-device machine learning, Flutter, Python.',
    },
    {
      name: 'Gnawalma',
      issuer: 'Tailor Shop App',
      meta: 'Flutter, Firebase, and NestJs app with offline-first architecture.',
    },
    {
      name: 'Jenv CLI',
      issuer: 'Cross-Platform Tool',
      meta: 'JDK version management tool built with Python.',
    },
  ],
}

const COPY: Record<Locale, Copy> = { fr: FR, en: EN }

export const PROFILE = {
  name: 'Cheikh A. Tijani Traore',
  location: 'Dakar, Sénégal',
  cv: '/cv.pdf',
}

export function getResume(locale: Locale) {
  return {
    ...COPY[locale],
    locale,
    otherLocale: (locale === 'fr' ? 'en' : 'fr') as Locale,
  }
}

export type Resume = ReturnType<typeof getResume>
