// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Cheikh Ahmed Tijani Traoré",
  title: "Cheikh Ahmed Tijani Traoré - CV",
  footer: context { [#emph[Cheikh Ahmed Tijani Traoré -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Dernière mise à jour juil 2026] ],
  locale-catalog-language: "fr",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 1.3cm,
  page-bottom-margin: 1.3cm,
  page-left-margin: 1.5cm,
  page-right-margin: 1.5cm,
  page-show-footer: false,
  page-show-top-note: false,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(12, 73, 122),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(12, 73, 122),
  colors-section-titles: rgb(12, 73, 122),
  colors-links: rgb(12, 73, 122),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "left",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.15cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 0cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 7,
    day: 7,
  ),
)


= Cheikh Ahmed Tijani Traoré

#connections(
  [#connection-with-icon("location-dot")[Dakar, Sénégal]],
  [#link("mailto:atidiane741@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[atidiane741\@gmail.com]]],
  [#link("tel:+221-78-170-61-84", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[78 170 61 84]]],
  [#link("https://cheikh-tidiane-portfolio.vercel.app/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[cheikh-tidiane-portfolio.vercel.app]]],
  [#link("https://linkedin.com/in/cheikh-tidiane01", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[cheikh-tidiane01]]],
  [#link("https://github.com/traorecheikh", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[traorecheikh]]],
)


== Résumé

Directeur des Systèmes d'Information et consultant en transformation digitale avec plus de 4 ans d'expérience sur des systèmes métiers critiques, à l'intersection de la structuration SI, des plateformes opérationnelles, de la donnée et de l'IA appliquée.

== Compétences clés

#strong[Transformation SI:] gouvernance, digitalisation, documentation, reporting, conduite du changement

#strong[ERP et opérations:] transformations Odoo, flux logistiques et financiers, stratégie de migration, accompagnement utilisateur

#strong[Data et IA appliquée:] SQL, Pandas, scikit-learn, pipelines KPI, automatisation reporting, workflows IA pragmatiques

#strong[Conseil et delivery:] cadrage des besoins, communication parties prenantes, documentation technique, formation

== Expérience

#regular-entry(
  [
    #strong[Compagnie Prestige Immobilier (CPI)], Directeur des Systèmes d'Information

    - Porte la structuration de la fonction SI et un programme de transformation digitale, avec une responsabilité couvrant gouvernance, sécurité, documentation et adoption.

    - Définit le socle Microsoft 365 + Odoo pour centraliser les processus métier, la collaboration, la gestion documentaire et le reporting de direction.

    - Cadre une feuille de route de 6 mois orientée redressement opérationnel, traçabilité des flux, sauvegarde et conduite du changement.

  ],
  [
    Dakar, Sénégal

    juil 2026 – présent

  ],
)

#regular-entry(
  [
    #strong[LIC], Consultant produit, data et solutions

    - Intervient en parallèle sur le cadrage produit, l'analyse métier, la documentation et l'alignement technico-commercial pour des produits e-commerce et de gestion.

  ],
  [
    Dakar, Sénégal \/ Remote

    août 2025 – présent

  ],
)

#regular-entry(
  [
    #strong[G&G Professional Services], Consultant Technique et Data

    - A piloté des missions de digitalisation et d'évolution de systèmes métiers en combinant cadrage, implémentation technique et coordination opérationnelle multi-clients.

    - A livré des développements critiques pour EBS sur la logistique, les achats, les ventes, la comptabilité, le CRM, le site web et le parcours SAV mobile dans un périmètre de 6 dépôts et 30 routes.

    - A mené des migrations Odoo vers la v18 pour CDA et Sentech tout en formant environ 100 utilisateurs sur les processus et la qualité de la donnée.

  ],
  [
    Dakar, Sénégal

    juil 2025 – juin 2026

  ],
)

#regular-entry(
  [
    #strong[Teksi], Développeur full-stack freelance

    - A développé un Student Management Service avec Spring Boot, Angular, Docker et DigitalOcean sur une architecture multi-tenant.

  ],
  [
    Montréal, Canada \/ Remote

    avr 2025 – avr 2026

  ],
)

== Formation

#education-entry(
  [
    #strong[Dakar Institute of Technology], Master en Intelligence Artificielle

  ],
  [
    mars 2026

  ],
  degree-column: [
    
  ],
)

#education-entry(
  [
    #strong[Institut Supérieur d'Informatique], Licence en Génie Logiciel

  ],
  [
    sept 2025

  ],
  degree-column: [
    
  ],
)

== Certifications professionnelles

#strong[DataCamp • AI Engineer for Developers Associate] : workflows ML appliqués, intégration de modèles et implémentation IA pragmatique.

#strong[Google\/Coursera • Google AI Professional Certificate] : socle appliqué en IA pour des contextes produit et opérationnels.

#strong[Linux Foundation (LFD114) • Porting Software to RISC-V] : fondamentaux de portabilité logicielle et rigueur systèmes.

== Langues

#strong[Langues de travail:] Français, anglais, wolof, pulaar (courant) ; arabe, espagnol (intermédiaire)
