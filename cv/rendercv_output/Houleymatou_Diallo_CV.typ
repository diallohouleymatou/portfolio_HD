// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Houleymatou Diallo",
  title: "Houleymatou Diallo - CV",
  footer: context { [#emph[Houleymatou Diallo -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Dernière mise à jour mai 2026] ],
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
    month: 5,
    day: 5,
  ),
)


= Houleymatou Diallo

#connections(
  [#connection-with-icon("location-dot")[Dakar, Sénégal]],
  [#link("mailto:dhouleymatou150@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[dhouleymatou150\@gmail.com]]],
  [#link("tel:+221-78-277-55-79", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[78 277 55 79]]],
  [#link("http://houleyma-diallo-portfolio.vercel.app/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[houleyma-diallo-portfolio.vercel.app]]],
  [#link("https://linkedin.com/in/houleymatou-diallo-ba76782b7", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[houleymatou-diallo-ba76782b7]]],
  [#link("https://github.com/diallohouleymatou", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[diallohouleymatou]]],
)


== Résumé

Développeuse full-stack et conceptrice de logiciels, spécialisée dans l’analyse des besoins métier, la conception de solutions applicatives fiables et l’évolution de systèmes à fort enjeu opérationnel. J’interviens sur l’ensemble du cycle de développement, de la conception à la mise en production, avec une approche structurée, orientée qualité, sécurité et performance.

== Expérience

#regular-entry(
  [
    #strong[SIMEN], Agente développeuse full-stack

    - Développe et fait évoluer des applications métiers au sein du Système d’Information et de Management de l’Éducation Nationale, dans le cadre d’un poste full-time en CDD.

    - Contribue à la modernisation des systèmes existants en appliquant les bonnes pratiques de développement, de structuration technique et d’amélioration continue.

  ],
  [
    Dakar, Sénégal

    févr 2026 – présent

  ],
)

#regular-entry(
  [
    #strong[Stellar Consulting], Consultante informatique

    - A développé et personnalisé des solutions Odoo adaptées aux besoins métiers des clients.

    - A supervisé l’infrastructure informatique et optimisé les usages des outils Microsoft 365.

  ],
  [
    Dakar, Sénégal

    nov 2025 – janv 2026

  ],
)

#regular-entry(
  [
    #strong[SIMEN], Développeuse de logiciels

    - A participé à la conception et à l’implémentation de solutions full-stack destinées à la modernisation de systèmes existants.

  ],
  [
    Dakar, Sénégal

    oct 2025 – nov 2025

  ],
)

#regular-entry(
  [
    #strong[Megatic], Développeuse de logiciels

    - Participe au développement d’une application de gestion scolaire couvrant les classes, élèves, enseignants, notes et bulletins.

    - Collabore à distance avec l’équipe sur l’implémentation de fonctionnalités, les tests et l’amélioration de l’expérience utilisateur.

  ],
  [
    Remote \/ Dakar, Sénégal

    nov 2025 – présent

  ],
)

== Formation

#education-entry(
  [
    #strong[Dakar Institute of Technology], Master en Intelligence Artificielle

  ],
  [
    mars 2026 – présent

  ],
  degree-column: [
    
  ],
)

#education-entry(
  [
    #strong[Institut Supérieur d'Informatique], Licence en Génie Logiciel

  ],
  [
    janv 2023 – sept 2025

  ],
  degree-column: [
    
  ],
)

== Compétences

#strong[Développement applicatif:] Python, Flask, Flutter, Laravel, Angular, Node.js, Java, React, Odoo

#strong[Architecture & qualité logicielle:] analyse des besoins, conception applicative, API, sécurité, bonnes pratiques de développement, tests

#strong[DevOps & systèmes:] Docker, Terraform, Git, Azure, Linux, Jenkins, GitLab, CI\/CD

#strong[Data & IA appliquée:] Pandas, NumPy, SQL, reporting, tableaux de bord, analyse de données

#strong[Méthodes & gestion de projet:] Trello, Kanban, Teams, UML, travail en équipe, documentation technique

#strong[Langues:] Pulaar (langue maternelle), français (C1\/C2), anglais (B1\/B2)

== Prix et distinctions

Certificat d’excellence – Institut Supérieur d’Informatique, obtenu pour des performances académiques remarquables en Licence 3 Génie Logiciel.

== Centres d’intérêt

Cuisine, voyage, lecture
