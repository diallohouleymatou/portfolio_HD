// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Cheikh Ahmed Tijani Traoré",
  title: "Cheikh Ahmed Tijani Traoré - CV",
  footer: context { [#emph[Cheikh Ahmed Tijani Traoré -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in July 2026] ],
  locale-catalog-language: "en",
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
  [#connection-with-icon("location-dot")[Dakar, Senegal]],
  [#link("mailto:atidiane741@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[atidiane741\@gmail.com]]],
  [#link("tel:+221-78-170-61-84", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[78 170 61 84]]],
  [#link("https://cheikh-tidiane-portfolio.vercel.app/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[cheikh-tidiane-portfolio.vercel.app]]],
  [#link("https://linkedin.com/in/cheikh-tidiane01", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[cheikh-tidiane01]]],
  [#link("https://github.com/traorecheikh", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[traorecheikh]]],
)


== Executive Profile

Client-facing Information Systems Director and transformation consultant delivering ERP, information-system, and operating-model changes in business-critical environments, with hands-on execution depth and applied AI awareness.

== Consulting Experience

#regular-entry(
  [
    #strong[Compagnie Prestige Immobilier (CPI)], Information Systems Director

    - Owns the structuring of the IS function and a digital transformation program.

    - Frames the Microsoft 365 + Odoo backbone for business processes, collaboration, document governance, and management reporting.

    - Leads a 6-month recovery roadmap covering governance, security, backup, traceability, and adoption.

  ],
  [
    Dakar, Senegal

    July 2026 – present

  ],
)

#regular-entry(
  [
    #strong[LIC], Product, Data & Solutions Consultant

    - Supports product and solution framing, converting business objectives into implementation-ready specifications and trade-off decisions.

  ],
  [
    Dakar, Senegal \/ Remote

    Aug 2025 – present

  ],
)

#regular-entry(
  [
    #strong[G&G Professional Services], Technical & Data Consultant

    - Owned end-to-end client missions from business scoping to technical rollout across digitalization, integration, and system evolution programs.

    - Implemented mission-critical developments for EBS across logistics, purchasing, sales, accounting, CRM, website, and mobile service pathways in a multi-site operational context.

    - Directed Odoo migration tracks to v18 while training users and improving process clarity and data discipline.

  ],
  [
    Dakar, Senegal

    July 2025 – June 2026

  ],
)

#regular-entry(
  [
    #strong[Teksi], Freelance Full-Stack Developer

    - Developed a multi-tenant Student Management Service and aligned architecture, API design, and deployment model for maintainable long-term scale.

  ],
  [
    Montreal, Canada \/ Remote

    Apr 2025 – Apr 2026

  ],
)

== Technical Positioning

#strong[IS & Governance:] governance design, operating standards, reporting, traceability, change enablement

#strong[ERP & Operations:] Odoo 18 delivery, process controls, migration strategy, training and adoption

#strong[Data & Applied AI:] SQL, Pandas, scikit-learn, KPI engineering, reporting automation, practical AI augmentation

#strong[Consulting Interface:] client workshops, requirements synthesis, technical documentation, delivery coordination

== Education

#education-entry(
  [
    #strong[Dakar Institute of Technology], Master's in Artificial Intelligence

  ],
  [
    Mar 2026

  ],
  degree-column: [
    
  ],
)

#education-entry(
  [
    #strong[Higher Institute of Computer Science (ISI)], Bachelor's in Software Engineering

  ],
  [
    Sept 2025

  ],
  degree-column: [
    
  ],
)

== Professional Certifications

#strong[DataCamp • AI Engineer for Developers Associate] (applied ML workflow integration focus).

#strong[Google\/Coursera • Google AI Professional Certificate] (applied AI foundations for product contexts).

#strong[Linux Foundation (LFD114) • Porting Software to RISC-V] (systems portability fundamentals).

== Languages

#strong[Working Languages:] French, English, Wolof, Pulaar (fluent); Arabic, Spanish (intermediate)
