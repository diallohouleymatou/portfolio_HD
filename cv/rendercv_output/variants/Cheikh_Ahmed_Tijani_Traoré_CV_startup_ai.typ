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

Software engineer and technical consultant building business systems and data workflows, transitioning into applied AI systems with a focus on pragmatic integration, operational reliability, and architecture depth.

== Experience

#regular-entry(
  [
    #strong[G&G Professional Services], Technical & Data Consultant

    - Builds and evolves client business systems across logistics, procurement, sales, accounting, and CRM domains in live operational environments.

    - Delivered EBS workflow and reporting capabilities across 6 warehouses and 30 routes, improving execution visibility and cross-team coordination.

    - Led Odoo upgrade streams to v18, including legacy continuity constraints and process redesign for CDA and Sentech.

  ],
  [
    Dakar, Senegal

    July 2025 – present

  ],
)

#regular-entry(
  [
    #strong[LIC], Product, Data & Solutions Consultant

    - Translates user and business requirements into implementation-ready product scopes for web\/mobile commerce and operations products.

    - Supports KPI and data-flow structuring for product decisions and iterative delivery planning.

  ],
  [
    Dakar, Senegal \/ Remote

    Aug 2025 – present

  ],
)

#regular-entry(
  [
    #strong[Teksi], Freelance Full-Stack Developer

    - Developing a Student Management Service with Spring Boot and Angular on a multi-tenant model, deployed with Docker on DigitalOcean.

  ],
  [
    Remote

    Apr 2025 – present

  ],
)

== Applied AI & Systems Projects

Built data and KPI workflows for ERP and business operations contexts, using SQL\/Pandas pipelines and dashboard-oriented outputs.

Prototyped lightweight retrieval-oriented tooling in constrained environments to explore practical AI augmentation patterns.

Delivered architecture decisions balancing business constraints, maintainability, and deployment speed.

== Technical Stack

#strong[Backend & Data:] Spring Boot, SQL, Pandas, scikit-learn, API design

#strong[Systems & Platform:] Odoo 18, PostgreSQL, Docker, Linux, DigitalOcean, CI\/CD

#strong[Product & Delivery:] requirements framing, technical documentation, stakeholder communication, user training

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

== Applied AI Development (Selected)

DataCamp — AI Engineer for Developers Associate: practical model and workflow integration for application contexts.

Google\/Coursera — Google AI Professional Certificate: broad applied AI concepts for product-level implementation.

Linux Foundation (LFD114) — Porting Software to RISC-V: systems-level rigor relevant to software portability and architecture thinking.

== Languages

#strong[Spoken Languages:] French, English, Wolof, Pulaar (fluent); Arabic, Spanish (intermediate)
