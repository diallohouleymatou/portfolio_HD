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
    day: 21,
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


== Titre

Responsable SI, Data & IA

== Profil

Consultant technique et data intervenant depuis 2019 sur des sujets de digitalisation, Odoo, reporting, cadrage fonctionnel et accompagnement utilisateur.

== Compétences clés

#strong[Stratégie SI & gouvernance:] digitalisation métier, cadrage fonctionnel, documentation, reporting, conduite du changement

#strong[Applications & ERP:] Odoo 18, CRM, achats, ventes, stock, comptabilité, workflows métier

#strong[Data, reporting & IA:] SQL, Pandas, scikit-learn, KPI, qualité de donnée, tableaux de bord

#strong[Infrastructure & plateformes:] Microsoft 365, PostgreSQL, Azure, Linux, CI\/CD, Docker

== Expérience

#regular-entry(
  [
    #strong[G&G Professional Services], Consultant Technique & Data

    - Pilote des missions de digitalisation et d'évolution de systèmes métiers pour plusieurs clients, avec un rôle combinant cadrage, coordination, reporting et exécution technique.

    - A mené pour EBS des développements critiques couvrant logistique, achats, ventes, comptabilité, CRM, site web et SAV mobile dans un contexte de 6 dépôts et 30 routes.

    - A conduit des migrations Odoo vers la version 18 sur des environnements métiers complexes, avec préservation des données et accompagnement utilisateur.

    - A formé environ 100 utilisateurs sur logistique, achats, stock et qualité de donnée, afin d'améliorer l'adoption et la fiabilité opérationnelle.

  ],
  [
    Dakar, Sénégal

    juil 2025 – juin 2026

  ],
)

#regular-entry(
  [
    #strong[LIC], Consultant produit, data & solutions

    - Intervient sur le cadrage produit, l'analyse métier, la documentation et l'alignement technico-commercial de produits e-commerce et de gestion.

    - Contribue à structurer besoins, KPI et supports de décision pour rapprocher attentes métier et capacité de livraison.

  ],
  [
    Dakar, Sénégal \/ Remote

    août 2025 – présent

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

== Projets stratégiques sélectionnés

#strong[EBS - Digitalisation Odoo opérations] : développements sur logistique, achats, ventes, comptabilité, CRM, site web et SAV mobile dans un périmètre de 6 dépôts et 30 routes.

#strong[CDA - Migration Odoo v8 vers v18] : continuité des données depuis 2016 et alignement du socle applicatif sur les besoins métiers.

#strong[Sentech - Migration Odoo v14 vers v18] : modernisation ERP, accompagnement utilisateur et dashboard financier.

== Formation & certifications

#strong[Master en Intelligence Artificielle] - Dakar Institute of Technology (en cours)

#strong[Licence en Génie Logiciel] - Institut Supérieur d'Informatique

#strong[DataCamp] - AI Engineer for Developers Associate ; #strong[Google\/Coursera] - Google AI Professional Certificate ; #strong[Linux Foundation (LFD114)] - Porting Software to RISC-V

== Technologies

#strong[Stack:] Spring Boot, Angular, API design, Odoo 18, SQL, Pandas, PostgreSQL, Docker, Microsoft 365, Azure, Linux

== Langues

#strong[Langues:] Français, anglais, wolof, pulaar ; arabe, espagnol
