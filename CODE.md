# Master Implementation Plan: "The Expansion"

> **Goal:** Transform the portfolio from a standard showcase into a high-end Engineering Logbook and Interactive Experience.
> **Tech Stack:** Nuxt 4 (Future compat), Tailwind CSS v4, Nuxt Content v3, GSAP, VueUse.

---

## 🏗 Phase 1: Content Architecture (The "Deep Dive")

We will implement a scalable system for Case Studies and Text-heavy pages using **Nuxt Content v3**.

### 1.1 Case Study Engine (`/case-studies/[slug]`)
**Objective:** Create immersive, editorial-style deep dives for LIC, Gnawalma, and Koala.

*   **Architecture:**
    *   **Directory:** `content/case-studies/`
    *   **Format:** `.md` (Markdown) using MDC (Markdown Components) for rich interactivity.
    *   **Dynamic Route:** `app/pages/case-studies/[...slug].vue`
*   **Components to Build (`app/components/content/`):**
    *   `StatCard.vue`: For displaying metrics (e.g., "-40% Load Time").
    *   `TechStack.vue`: Horizontal scrolling list of icons used.
    *   `GalleryGrid.vue`: Masonry layout for screenshots.
    *   `BeforeAfter.vue`: A slider component (using `img-comparison-slider` logic) to show UI improvements (Crucial for LIC).
    *   `QuoteBlock.vue`: Styled blockquote for client testimonials.
*   **Data Structure (Frontmatter):**
    ```yaml
    title: "LIC - Corporate Identity"
    description: "Modernizing a consulting firm's digital presence."
    date: "2025-10-15"
    heroImage: "/images/lic-hero.png"
    stats:
      - label: "Performance"
        value: "100/100"
      - label: "Dev Time"
        value: "2 Weeks"
    ```
*   **Specific Pages:**
    *   **LIC:** Focus on the "Request Access" flow, GSAP animations, and the professional "Corporate" aesthetic.
    *   **Gnawalma:** Focus on the "Offline First" architecture (Flutter/Hive), order tracking flow.
    *   **Koala:** Focus on Privacy (On-device ML), Python integration, and financial data visualization.

### 1.2 The "Uses" Page (`/uses/software`)
**Objective:** A curated, living list of your tools.

*   **Design:** A split layout or tabs (Hardware vs Software).
*   **Data Source:** `app/data/uses.ts` (Easier to maintain than markdown for simple lists).
*   **Key Content:**
    *   **OS:** Ubuntu 24.10 (Linux Flex).
    *   **AI Stack:** Gemini (Frontend/Creative) vs Claude (Backend/Logic).
    *   **Editor:** VS Code + Extensions list.
    *   **Font:** JetBrains Mono (with ligatures enabled).
*   **Visuals:** Icons for every tool (using `UIcon`).

### 1.3 The Manifesto (`/manifesto`)
**Objective:** A declaration of your engineering values.

*   **Design:** Editorial, typography-heavy. Large serif headings (e.g., `Playfair Display`) paired with your sans-serif body.
*   **Interaction:** Text highlights on scroll (GSAP ScrollTrigger).
*   **Key Principles:**
    *   "Offline First" (Gnawalma influence).
    *   "Privacy by Default" (Koala influence).
    *   "Performance is a Feature".
    *   "No Vendor Lock-in".

---

## 🎨 Phase 2: Creative Engineering (The "Flex")

### 2.1 Magnetic Buttons
**Objective:** Buttons that physically attract the cursor when it gets close.

*   **Tech:** Vue Directive `v-magnetic` or a Wrapper Component `<MagneticButton>`.
*   **Logic:**
    *   Track mouse position relative to the button center.
    *   If within `threshold` (e.g., 50px), translate the button towards the mouse by a factor (e.g., 0.3x).
    *   Use `GSAP` for smooth interpolation (spring physics).
    *   **Accessibility:** Disable on touch devices and if `prefers-reduced-motion` is true.

### 2.2 The Stack Graph (`/stack`)
**Objective:** An interactive force-directed graph showing how your skills connect.

*   **Tech:** `D3.js` (Force layout) or `Vue Flow` (Simpler). Let's go **D3.js** for maximum customizability.
*   **Design:**
    *   **Nodes:** Technology Logos (Vue, Nuxt, Python, Odoo).
    *   **Links:** Relationships (e.g., Nuxt --uses--> Vue, Odoo --uses--> Python).
    *   **Interaction:** Draggable nodes, zooming, highlighting connected nodes on hover.
    *   **Aesthetic:** Dark mode, neon lines, glowing nodes.

---

## 🛠 Phase 3: Client Experience & Systems

### 3.1 Design System (`/design-system`)
**Objective:** A live styleguide to prove architectural discipline.

*   **Implementation:** A manual page (not auto-generated Storybook, to keep it lightweight).
*   **Sections:**
    *   **Typography:** Headings (H1-H6), Body, Mono.
    *   **Colors:** The full Tailwind palette (Primary 50-950, Gray 50-950).
    *   **Components:** Buttons (Solid, Ghost, Outline), Badges, Inputs, Cards.
    *   **Interaction:** "Magnetic" playground area.

### 3.2 Client Onboarding (`/onboarding`)
**Objective:** A private-feeling page to set expectations.

*   **Access:** Hidden from nav, maybe a simple password gate (client-side is fine for this context) or just a UUID route.
*   **Content:**
    *   **Communication:** "Async first, meetings for decisions."
    *   **Tools:** "Trello for tasks, GitHub for code, Slack/WhatsApp for chat."
    *   **Payments:** "50% upfront, 50% on delivery."
    *   **Philosophy:** "I am not just a coder, I am a partner."

---

## 🗓 Execution Order

1.  **Setup Nuxt Content:** Install & Configure `@nuxt/content`.
2.  **Create Components:** Build `MagneticButton` and Content sub-components (`StatCard`, etc.).
3.  **Build Case Studies:** Write the Markdown content for LIC, Gnawalma, Koala.
4.  **Build Static Pages:** Implement Manifesto, Uses, Onboarding.
5.  **Build Complex Visuals:** Implement the D3 Stack Graph.
6.  **Build Design System:** Document what was built.
