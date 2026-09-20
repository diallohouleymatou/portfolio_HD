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


== Summary

Information Systems Director and digital transformation consultant with 4 years of experience structuring information systems, digitalizing business processes, and delivering end-to-end solutions across Odoo, Microsoft 365, data, and executive reporting.

== Experience

#regular-entry(
  [
    #strong[Compagnie Prestige Immobilier (CPI)], Information Systems Director

    - Leads the structuring of the IS function and a digital transformation program covering governance, documentation, security, and adoption.

    - Defines the Microsoft 365 + Odoo target stack to centralize business workflows, collaboration, document management, and executive reporting.

    - Drives a 6-month recovery roadmap focused on traceability, access controls, backup, and change enablement.

  ],
  [
    Dakar, Senegal

    July 2026 – present

  ],
)

#regular-entry(
  [
    #strong[LIC], Product, Data & Solutions Consultant

    - Continues part-time work on product scoping, business analysis, documentation, and technical-commercial alignment for e-commerce and business-management products.

  ],
  [
    Dakar, Senegal \/ Remote

    Aug 2025 – present

  ],
)

#regular-entry(
  [
    #strong[G&G Professional Services], Technical & Data Consultant

    - Led digitalization, integration, and business-system evolution missions for multiple clients, combining business scoping, reporting, coordination, and technical execution.

    - Delivered critical EBS developments across logistics, purchasing, sales, accounting, CRM, website, and mobile service flows in a 6-warehouse, 30-route environment.

    - Led Odoo v18 migration tracks and trained around 100 combined users on logistics, purchasing, inventory, and data discipline.

  ],
  [
    Dakar, Senegal

    July 2025 – June 2026

  ],
)

#regular-entry(
  [
    #strong[Teksi], Freelance Full-Stack Developer

    - Built a Student Management Service with Spring Boot, Angular, Docker, and DigitalOcean on a multi-tenant architecture designed for per-organization isolation.

  ],
  [
    Montreal, Canada \/ Remote

    Apr 2025 – Apr 2026

  ],
)

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

== Skills

#strong[Transformation & IS:] IS governance, digitalization, document management, reporting, change enablement

#strong[Development:] Spring Boot, Angular, Vue 3, API design, multi-tenant architecture, Docker

#strong[Data & Applied AI:] SQL, Pandas, scikit-learn, KPI, reporting, Odoo\/Vue dashboards

#strong[Platforms:] Odoo 18, Microsoft 365, PostgreSQL, DigitalOcean, Azure, Linux, CI\/CD, Entra ID, Odoo.sh

#strong[Languages:] French, English, Wolof, Pulaar (fluent); Arabic, Spanish (intermediate)
