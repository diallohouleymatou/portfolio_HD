# Product Requirements Document (PRD): Cheikh Traore Portfolio

## 1. Project Overview
**Goal:** Build a high-performance, professional, and visually distinct portfolio for Cheikh Ahmed Tijani Traore.
**Target Audience:** Recruiters (Canada/Intl), Local Clients (Senegal), Tech Leads.
**Identity:** "Industrial Professional" - Balancing the reliability of a Technical Consultant with the innovation of a Top GitHub Contributor.
**Vibe:** 8/10 on the Tech/Cyberpunk scale. Not "AI Slop". High-quality animations, clean typography, "System Operational" aesthetics.

## 2. Technical Stack
*   **Framework:** **Nuxt 3** (Vue 3) - Static Site Generation (SSG) mode.
*   **Language:** TypeScript.
*   **Styling:** **Tailwind CSS** (Utility-first) + **GSAP** (Animations).
*   **Hosting:** **Vercel** (Zero-config deployment for Nuxt).
*   **Content:** Markdown/JSON (No Headless CMS).
*   **Backend:** None (Serverless Functions via Vercel for form handling).
*   **CI/CD:** GitHub Actions (optional, Vercel handles this).
*   **Features:**
    *   `i18n`: Built-in Nuxt i18n module (French default, toggle for English).
    *   `View Source`: Button to toggle code visibility.

## 3. Design & UI/UX
*   **Theme:** Light Mode Default (Consultant), Togglable Dark Mode (Developer).
*   **Color Palette:**
    *   **Primary:** Maroon (#800000) - Distinct, strong.
    *   **Secondary:** Slate/Gray (Industrial feel).
    *   **Accent:** Tech Green/Amber (Status indicators, like Gnawalma).
*   **Typography:**
    *   **Body:** Inter or Manrope (Clean, legible).
    *   **Headings/Code:** JetBrains Mono (Dev feel).
*   **Animations:**
    *   Scroll-triggered reveals (GSAP ScrollTrigger).
    *   "Typing" effects for hero text.
    *   Smooth page transitions.
*   **Layout Structure:**
    *   **Hero:** Full-screen, strong intro, Avatar, "Top Committer" badge.
    *   **GitHub Graph:** Live interactive contribution graph.
    *   **Work/Projects:** Grid layout, filterable tabs (All, Odoo, Web, Mobile).
    *   **Playground:** Fun/Experimental projects ("Le Gauntlet").
    *   **About/Skills:** Timeline of experience, Skill badges (Vue, Odoo, SpringBoot).
    *   **Contact:** Dual CTA (Download PDF / Email Form).

## 4. Content Strategy
*   **Multi-lingual:**
    *   Content stored in `i18n/fr.json` and `i18n/en.json`.
    *   Routes: `/fr/...` (default) and `/en/...`.
*   **Confidential Projects:**
    *   "Copak" (Gestion Ecole) - described with generic "North American SaaS" terminology.
    *   Abstract UI wireframes (CSS-only) instead of screenshots.
*   **Assets:**
    *   Images in `/public/assets/images`.
    *   Logos in `/public/assets/logos`.
    *   CV PDF in `/public/assets/files`.

## 5. Implementation Roadmap
1.  **Scaffold:** Initialize Nuxt 3 project + Tailwind + GSAP.
2.  **Structure:** Set up layouts (`default.vue`), pages, and components.
3.  **Core Components:** Header (Nav + Lang Toggle), Footer, Hero, ProjectCard.
4.  **Data Layer:** Create `data/projects.ts` and `data/experience.ts` with types.
5.  **GitHub Integration:** Build component to fetch/display contribution graph.
6.  **Polishing:** Add GSAP animations, "Industrial" CSS details (borders, badges).
7.  **Content:** Populate with real data from `GEMINI.md`.
8.  **Finalize:** SEO tags, Sitemap, Vercel Deployment config.

## 6. Action Items for User
*   [ ] Provide **Logo** (upload to `public/assets/logos`).
*   [ ] Provide **Headshot** (upload to `public/assets/images`).
*   [ ] Provide **CV PDF** (upload to `public/assets/files`).
