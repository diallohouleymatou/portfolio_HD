// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Cheikh Ahmed Tijani Traoré",
  title: "Cheikh Ahmed Tijani Traoré - CV",
  footer: context { [#emph[Cheikh Ahmed Tijani Traoré -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in May 2026] ],
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
    month: 5,
    day: 18,
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

Technical consultant and software engineer delivering ERP and operational systems in client-facing environments, with 4+ years of hands-on implementation and growing focus on applied AI-enabled decision workflows.

== Consulting Experience

#regular-entry(
  [
    #strong[G&G Professional Services], Technical & Data Consultant

    - Owns end-to-end client missions from business scoping to technical rollout across digitalization, integration, and system evolution programs.

    - Implemented mission-critical developments for EBS across logistics, purchasing, sales, accounting, CRM, website, and mobile service pathways in a multi-site operational context.

    - Directed Odoo migration tracks to v18 for CDA and Sentech, balancing continuity of historical data, process redesign, and user adoption constraints.

    - Delivered training and operational handover to approximately 100 users, improving process clarity and data discipline.

  ],
  [
    Dakar, Senegal

    July 2025 – present

  ],
)

#regular-entry(
  [
    #strong[LIC], Product, Data & Solutions Consultant

    - Supports product and solution framing, converting business objectives into implementation-ready specifications and technical trade-off decisions.

    - Contributes to KPI and reporting structures used for stakeholder alignment in e-commerce and business-management initiatives.

  ],
  [
    Dakar, Senegal \/ Remote

    Aug 2025 – present

  ],
)

#regular-entry(
  [
    #strong[Teksi], Freelance Full-Stack Developer

    - Developing a multi-tenant Student Management Service and aligning architecture, API design, and deployment model for maintainable long-term scale.

  ],
  [
    Remote

    Apr 2025 – present

  ],
)

== Technical Positioning

#strong[Systems & Architecture:] API-first design, multi-tenant models, integration thinking, maintainability and portability

#strong[ERP & Operations:] Odoo 18 delivery, process controls, migration strategy, training and adoption

#strong[Data & Applied AI:] SQL, Pandas, scikit-learn, KPI engineering, reporting automation, practical AI augmentation

#strong[Consulting Interface:] client workshops, requirements synthesis, technical documentation, delivery coordination

== Education

#education-entry(
  [
    #strong[Dakar Institute of Technology], Master's in Artificial Intelligence

  ],
  [
    Mar 2026 – present

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

== Professional Development (Selected)

DataCamp — AI Engineer for Developers Associate (applied ML workflow integration focus).

Google\/Coursera — Google AI Professional Certificate (applied AI foundations for product contexts).

Linux Foundation (LFD114) — Porting Software to RISC-V (systems portability fundamentals).

== Languages

#strong[Working Languages:] French, English, Wolof, Pulaar (fluent); Arabic, Spanish (intermediate)
