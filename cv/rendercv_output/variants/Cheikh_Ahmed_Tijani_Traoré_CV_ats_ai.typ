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


== Summary

Software engineer and technical consultant with 4+ years delivering business-critical systems, now expanding into applied AI workflows and technical architecture across ERP, data, and operational platforms.

== Core Expertise

#strong[Systems Engineering:] API design, multi-tenant architecture, integration workflows, reliability-focused delivery

#strong[Business Systems & ERP:] Odoo transformations, logistics and finance workflows, migration planning, user enablement

#strong[Data & Applied AI:] SQL, Pandas, scikit-learn, KPI pipelines, reporting automation, lightweight retrieval workflows

#strong[Product & Consulting:] requirements translation, stakeholder communication, technical documentation, training

== Experience

#regular-entry(
  [
    #strong[G&G Professional Services], Technical & Data Consultant

    - Leads digitalization and system-evolution engagements combining business scoping, technical implementation, and operational coordination for multiple clients.

    - Delivered EBS operational-system developments across logistics, purchasing, sales, accounting, CRM, website, and mobile service flows, covering 6 warehouses and 30 routes.

    - Led Odoo migration programs to v18 for CDA and Sentech, preserving historical continuity and aligning workflows with current operational requirements.

    - Trained around 100 users across logistics, purchasing, and inventory workflows to improve data quality and process discipline.

  ],
  [
    Dakar, Senegal

    July 2025 – present

  ],
)

#regular-entry(
  [
    #strong[LIC], Product, Data & Solutions Consultant

    - Supports product scoping, business analysis, documentation, and technical-commercial alignment for e-commerce and business management products.

    - Structures KPI and decision-support workflows to connect business requirements with implementation constraints.

  ],
  [
    Dakar, Senegal \/ Remote

    Aug 2025 – present

  ],
)

#regular-entry(
  [
    #strong[Teksi], Freelance Full-Stack Developer

    - Building a Student Management Service using Spring Boot, Angular, Docker, and DigitalOcean on a multi-tenant architecture designed for per-organization isolation.

  ],
  [
    Remote

    Apr 2025 – present

  ],
)

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

DataCamp — AI Engineer for Developers Associate: applied ML engineering workflows, model integration, and practical AI implementation patterns.

Google\/Coursera — Google AI Professional Certificate: structured grounding in applied AI concepts and product-oriented use cases.

Linux Foundation (LFD114) — Porting Software to RISC-V: software portability and systems-level engineering fundamentals.

== Languages

#strong[Spoken Languages:] French, English, Wolof, Pulaar (fluent); Arabic, Spanish (intermediate)
