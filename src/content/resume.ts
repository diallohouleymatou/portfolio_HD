import Icon0 from '~icons/simple-icons/python'
import Icon1 from '~icons/simple-icons/flask'
import Icon2 from '~icons/simple-icons/flutter'
import Icon3 from '~icons/simple-icons/laravel'
import Icon4 from '~icons/simple-icons/angular'
import Icon5 from '~icons/simple-icons/react'
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
import Icon17 from '~icons/simple-icons/numpy'
import Icon18 from '~icons/simple-icons/uml'

export const locales = ['fr', 'en'] as const
export type Locale = (typeof locales)[number]

export function isLocale(value: string): value is Locale {
  return (locales as readonly string[]).includes(value)
}

export const CONTACT = {
  email: 'dhouleymatou150@gmail.com',
  phone: '+221 78 277 55 79',
  github: 'https://github.com/diallohouleymatou',
  linkedin: 'https://www.linkedin.com/in/houleymatou-diallo-ba76782b7',
}

export const SKILLS = [
  { name: 'Python', icon: Icon0 },
  { name: 'Flask', icon: Icon1 },
  { name: 'Flutter', icon: Icon2 },
  { name: 'Laravel', icon: Icon3 },
  { name: 'Angular', icon: Icon4 },
  { name: 'React', icon: Icon5 },
  { name: 'Node.js', icon: Icon6 },
  { name: 'Java', icon: Icon7 },
  { name: 'Odoo', icon: Icon8 },
  { name: 'Docker', icon: Icon9 },
  { name: 'Terraform', icon: Icon10 },
  { name: 'Azure', icon: Icon11 },
  { name: 'Linux', icon: Icon12 },
  { name: 'Git', icon: Icon13 },
  { name: 'CI/CD', icon: Icon14 },
  { name: 'SQL', icon: Icon15 },
  { name: 'Pandas', icon: Icon16 },
  { name: 'NumPy', icon: Icon17 },
  { name: 'UML', icon: Icon18 },
]

type Job = {
  company: string
  title: string
  period: string
  location: string
  current?: boolean
  highlights: string[]
}

type Project = {
  name: string
  description: string
  tech: string[]
  link?: string
}

type Certification = {
  name: string
  issuer: string
  date: string
  details: string
}

type Copy = {
  ui: Record<string, string>
  role: string
  summary: string
  about: string[]
  work: Job[]
  projects: Project[]
  certifications: Certification[]
  education: { school: string; degree: string; period: string }[]
  awards: { name: string; issuer: string; meta: string }[]
}

const FR: Copy = {
  ui: {
    about: 'À propos',
    work: 'Parcours',
    projects: 'Projets',
    certifications: 'Certifications',
    skills: 'Compétences',
    education: 'Formation',
    awards: 'Distinctions',
    contact: 'Contact',
    contactTitle: 'Parlons-en',
    contactLead: 'Application métier, modernisation d’un système existant ou projet Odoo : décrivez votre besoin.',
    downloadCv: 'Télécharger le CV',
    rights: 'Tous droits réservés.',
    current: 'En cours',
  },
  role: 'Développeuse full-stack',
  summary:
    'Je conçois des applications fiables à partir des besoins métier, de la conception à la mise en production.',
  about: [
    'Développeuse full-stack et conceptrice de logiciels, spécialisée dans l’analyse des besoins métier, la conception de solutions applicatives fiables et l’évolution de systèmes à fort enjeu opérationnel.',
    'J’interviens sur l’ensemble du cycle de développement, avec une approche structurée, orientée qualité, sécurité et performance.',
  ],
  work: [
    {
      company: 'SIMEN',
      title: 'Agente développeuse full-stack',
      period: 'Depuis février 2026',
      location: 'Dakar, Sénégal',
      current: true,
      highlights: [
        'Développe et fait évoluer des applications métiers au sein du Système d’Information et de Management de l’Éducation Nationale (CDD à temps plein).',
        'Contribue à la modernisation des systèmes existants : bonnes pratiques de développement, structuration technique et amélioration continue.',
      ],
    },
    {
      company: 'Megatic',
      title: 'Développeuse de logiciels',
      period: 'Depuis novembre 2025',
      location: 'Remote / Dakar, Sénégal',
      current: true,
      highlights: [
        'Participe au développement d’une application de gestion scolaire : classes, élèves, enseignants, notes et bulletins.',
        'Collabore à distance sur l’implémentation de fonctionnalités, les tests et l’amélioration de l’expérience utilisateur.',
      ],
    },
    {
      company: 'Stellar Consulting',
      title: 'Consultante informatique',
      period: 'Novembre 2025 – janvier 2026',
      location: 'Dakar, Sénégal',
      highlights: [
        'A développé et personnalisé des solutions Odoo adaptées aux besoins métiers des clients.',
        'A supervisé l’infrastructure informatique et optimisé les usages des outils Microsoft 365.',
      ],
    },
    {
      company: 'SIMEN',
      title: 'Stagiaire développeuse de logiciels',
      period: 'Octobre 2025 – novembre 2025',
      location: 'Dakar, Sénégal',
      highlights: [
        'A participé à la conception et à l’implémentation de solutions full-stack destinées à la modernisation de systèmes existants.',
      ],
    },
  ],
  projects: [
    {
      name: 'RAMATU (PWA)',
      description: 'Plateforme Nationale d\'E-Learning et de Continuité Pédagogique (PWA Offline-First) pour le Ministère. Intègre la création de cours, les activités interactives H5P, la correction de devoirs et des parcours de remédiation automatisés avec un fonctionnement 100% hors-ligne.',
      tech: ['PWA', 'Offline-First', 'E-Learning', 'Azure Entra ID'],
    },
    {
      name: 'Planète 3 (Desktop)',
      description: 'Application de bureau macOS/Windows conçue pour fonctionner en environnement hors-ligne (Offline-first). Permet la gestion des établissements, des listes d\'élèves et la simulation de bulletins scolaires. Intègre un moteur de synchronisation réseau local et une authentification SSO Microsoft Azure AD.',
      tech: ['Flutter', 'Dart', 'Offline-First', 'Desktop'],
    },
    {
      name: 'SIREN-ED',
      description: 'Système d\'Information ministériel de signalement et de suivi d\'événements (MVP). Offre une création et un suivi d\'alertes en temps réel à travers des vues opérationnelles complexes (cartographie, messagerie, analytics, dashboard).',
      tech: ['Vue 3', 'Tailwind CSS', 'Vite', 'Vue Router'],
    },
    {
      name: 'Plateforme de Questionnaires (EduStat)',
      description: 'Plateforme souveraine de collecte de données statistiques pour la DPTIC. Permet aux agents non-techniciens de créer des enquêtes via une interface no-code, en garantissant que toutes les données sensibles (réponses et schémas) restent sur les serveurs maîtrisés du Ministère.',
      tech: ['React 18', 'SurveyJS', 'ASP.NET Core 8', 'SQL Server'],
    },
    {
      name: 'Gestion Salles MEN',
      description: 'Système centralisé de planification et de réservation des salles de réunion du Ministère. Gère les plannings du 1er au 6e étage et s\'intègre directement à l\'infrastructure réseau de l\'État via une authentification SSO (OpenID Connect / SAML).',
      tech: ['Vue 3', 'TypeScript', 'Pinia', 'MongoDB'],
    },
    {
      name: 'Agile Dashboard',
      description: 'Tableau de bord interactif de production pour le pilotage des projets de la DSI. Inspiré du format tableau blanc, il offre un suivi précis par Sprint et par User Story avec des indicateurs visuels avancés et des graphiques intégrés.',
      tech: ['Vue 3', 'Chart.js', 'Pinia', 'Lucide'],
    },
    {
      name: 'GS-Académie (Megatic)',
      description: 'Application web de gestion scolaire complète. Intègre la gestion administrative, la facturation avec passerelle de paiement en ligne (PayDunya), un module d\'envoi de notifications SMS et un portail dédié sécurisé pour les parents/tuteurs.',
      tech: ['PHP (CodeIgniter)', 'MySQL', 'PayDunya API', 'AJAX'],
    },
  ],
  certifications: [
    {
      name: 'Certificat Professionnel Google Cybersecurity',
      issuer: 'Google (via Coursera)',
      date: 'Août 2026',
      details: 'Cybersécurité (9 cours) : Gestion des risques, Sécurité réseau, Linux & SQL, Détection/Réponse aux incidents, SIEM (Splunk/Chronicle), IDS & Automatisation Python. (ID : O4AKT1VP7SNU)',
    },
    {
      name: 'Certificat Professionnel Google AI',
      issuer: 'Google (via Coursera)',
      date: 'Août 2026',
      details: 'Spécialisation IA (7 cours) : Fondamentaux de l\'IA, Création d\'apps IA, Analyse de données, Prompt Engineering & 20+ artefacts. (ID : YRJ49W5Z4YOJ)',
    },
    {
      name: 'Certificat de Formation en Intelligence Artificielle',
      issuer: 'Fundación Ingenieros ICAI',
      date: 'Juillet 2026',
      details: 'Modèles génératifs, Traitement du Langage Naturel (NLP), architectures IA, API Python & garde-fous de sécurité.',
    },
  ],
  education: [
    {
      school: 'Dakar Institute of Technology',
      degree: 'Master en intelligence artificielle',
      period: 'Depuis mars 2026',
    },
    {
      school: 'Institut Supérieur d’Informatique',
      degree: 'Licence en génie logiciel',
      period: 'Janvier 2023 – septembre 2025',
    },
  ],
  awards: [
    {
      name: 'Certificat d’excellence',
      issuer: 'Institut Supérieur d’Informatique',
      meta: 'Performances académiques remarquables en Licence 3 Génie Logiciel',
    },
  ],
}

const EN: Copy = {
  ui: {
    about: 'About',
    work: 'Experience',
    projects: 'Projects',
    certifications: 'Certifications',
    skills: 'Skills',
    education: 'Education',
    awards: 'Awards',
    contact: 'Contact',
    contactTitle: 'Get in touch',
    contactLead: 'Business application, legacy system modernisation or Odoo project: describe what you need.',
    downloadCv: 'Download CV',
    rights: 'All rights reserved.',
    current: 'Current',
  },
  role: 'Full-stack developer',
  summary: 'I design reliable applications from business needs, from design to production.',
  about: [
    'Full-stack developer and software designer, specialised in business requirements analysis, reliable application design and the evolution of systems with high operational stakes.',
    'I work across the whole development cycle with a structured approach focused on quality, security and performance.',
  ],
  work: [
    {
      company: 'SIMEN',
      title: 'Full-stack developer',
      period: 'Since February 2026',
      location: 'Dakar, Senegal',
      current: true,
      highlights: [
        'Builds and evolves business applications within the Education Ministry’s Information and Management System (full-time fixed-term contract).',
        'Contributes to modernising existing systems: development best practices, technical structure and continuous improvement.',
      ],
    },
    {
      company: 'Megatic',
      title: 'Software developer',
      period: 'Since November 2025',
      location: 'Remote / Dakar, Senegal',
      current: true,
      highlights: [
        'Contributes to a school management application covering classes, students, teachers, grades and report cards.',
        'Works remotely with the team on feature implementation, testing and user experience improvements.',
      ],
    },
    {
      company: 'Stellar Consulting',
      title: 'IT consultant',
      period: 'November 2025 – January 2026',
      location: 'Dakar, Senegal',
      highlights: [
        'Developed and customised Odoo solutions tailored to client business needs.',
        'Supervised IT infrastructure and optimised the use of Microsoft 365 tools.',
      ],
    },
    {
      company: 'SIMEN',
      title: 'Software developer intern',
      period: 'October 2025 – November 2025',
      location: 'Dakar, Senegal',
      highlights: [
        'Took part in designing and implementing full-stack solutions to modernise existing systems.',
      ],
    },
  ],
  projects: [
    {
      name: 'RAMATU (PWA)',
      description: 'National E-Learning and Educational Continuity Platform (Offline-First PWA) for the Ministry. Features course creation, interactive H5P activities, assignment grading, and automated remediation paths with a full 100% offline mode.',
      tech: ['PWA', 'Offline-First', 'E-Learning', 'Azure Entra ID'],
    },
    {
      name: 'Planète 3 (Desktop)',
      description: 'Offline-first desktop application (macOS/Windows) designed for offline educational environments. Enables school management, student roster handling, and report card simulations with a local network sync engine and Microsoft Azure AD SSO.',
      tech: ['Flutter', 'Dart', 'Offline-First', 'Desktop'],
    },
    {
      name: 'SIREN-ED',
      description: 'Ministerial Information System MVP for event reporting and tracking. Provides real-time alert creation and monitoring through complex operational views including mapping, messaging, analytics, and dashboards.',
      tech: ['Vue 3', 'Tailwind CSS', 'Vite', 'Vue Router'],
    },
    {
      name: 'Questionnaire Platform (EduStat)',
      description: 'Sovereign statistical data collection platform for the DPTIC. Allows non-technical agents to build surveys via a no-code interface, ensuring all sensitive data (responses and schemas) remains securely on controlled Ministry servers.',
      tech: ['React 18', 'SurveyJS', 'ASP.NET Core 8', 'SQL Server'],
    },
    {
      name: 'MEN Meeting Rooms',
      description: 'Centralized planning and booking system for Ministry meeting rooms. Manages schedules across six floors and integrates directly with the government\'s network infrastructure via SSO authentication (OpenID Connect / SAML).',
      tech: ['Vue 3', 'TypeScript', 'Pinia', 'MongoDB'],
    },
    {
      name: 'Agile Dashboard',
      description: 'Interactive production dashboard for IT project management. Inspired by whiteboard formats, it provides precise tracking per Sprint and User Story with advanced visual indicators and embedded charts.',
      tech: ['Vue 3', 'Chart.js', 'Pinia', 'Lucide'],
    },
    {
      name: 'GS-Académie (Megatic)',
      description: 'Comprehensive web-based school management application. Features administrative workflows, student billing with online payment gateway (PayDunya), an SMS notification module, and a secure portal for parents/guardians.',
      tech: ['PHP (CodeIgniter)', 'MySQL', 'PayDunya API', 'AJAX'],
    },
  ],
  certifications: [
    {
      name: 'Google Cybersecurity Professional Certificate',
      issuer: 'Google (via Coursera)',
      date: 'August 2026',
      details: 'Cybersecurity (9 courses): Risk management, Network security, Linux & SQL, Incident detection/response, SIEM (Splunk/Chronicle), IDS & Python automation. (ID: O4AKT1VP7SNU)',
    },
    {
      name: 'Google AI Professional Certificate',
      issuer: 'Google (via Coursera)',
      date: 'August 2026',
      details: 'AI Specialization (7 courses): AI fundamentals, AI app creation, Data analysis, Prompt Engineering & 20+ artifacts. (ID: YRJ49W5Z4YOJ)',
    },
    {
      name: 'Artificial Intelligence Training Certificate',
      issuer: 'Fundación Ingenieros ICAI',
      date: 'July 2026',
      details: 'Generative models, Natural Language Processing (NLP), AI architectures, Python APIs & security guardrails.',
    },
  ],
  education: [
    {
      school: 'Dakar Institute of Technology',
      degree: 'Master’s in Artificial Intelligence',
      period: 'Since March 2026',
    },
    {
      school: 'Institut Supérieur d’Informatique',
      degree: 'Bachelor’s in Software Engineering',
      period: 'January 2023 – September 2025',
    },
  ],
  awards: [
    {
      name: 'Certificate of excellence',
      issuer: 'Institut Supérieur d’Informatique',
      meta: 'Outstanding academic performance in the third year of the Software Engineering degree',
    },
  ],
}

const COPY: Record<Locale, Copy> = { fr: FR, en: EN }

export const PROFILE = {
  name: 'Houleymatou Diallo',
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
