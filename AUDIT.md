# Website Audit & Expansion Proposal

> **Date:** January 17, 2026
> **Target:** Portfolio of Cheikh Ahmed Tijani Traore
> **Status:** Revised (Previous suggestions marked as "Standard/Basic")

---

## 1. Content Writing Implementation: "The Engineering Logbook"

To make content writing actually stand out, avoid the standard "blog" layout.

### **The Stack**
*   **Nuxt Content (v3)**: For MDC (Markdown Components).
*   **Shiki**: High-performance syntax highlighting.
*   **Twoslash**: TypeScript compiler information *inside* code blocks (hover over variables to see types).

### **The "Cool" Implementation**
*   **"Living" Code Snippets:** Don't just show code. Use `Vue Live` or `WebContainers` to let users **run** and **edit** the code blocks directly in the browser.
*   **Scrollytelling:** As the user reads a tutorial, the code on the right side automatically highlights the relevant lines and updates the preview.
*   **Marginalia:** Instead of footnotes, use side-notes that appear on hover/click, styled like code comments.

---

## 2. Feature Proposals (The "Actually Cool" List - 40 Items)

*Since the previous 20 were considered "standard", this list focuses on High-Technical Difficulty, Creative Coding, and "Flex" features that show mastery of the stack.*

### 🧪 Experimental & Cutting Edge (Web APIs)
1.  **Browser-Native AI (WebLLM):** Run a small LLM (like TinyLlama) *entirely in the user's browser* (WASM) to chat about your projects without server costs.
2.  **WebRTC P2P File Drop:** A "hidden" page where you can drop a file, generate a link, and transfer it directly to a client's browser peer-to-peer (no server storage).
3.  **Biometric "VIP" Access (WebAuthn):** Allow recruiters to "Login with FaceID/TouchID" to see sensitive/NDA projects (mock authentication or real).
4.  **Audio-Reactive UI:** Use the Web Audio API to make the background mesh/gradient pulsate subtly to music (if the user enables audio).
5.  **Bluetooth Availability:** Connect to a physical "Busy/Available" light in your office via WebBluetooth (if visitor is nearby/you allow it) - *Pure flex*.
6.  **Eye-Tracking Scroll (WebGazer):** Experimental mode where the page scrolls based on where the user looks (using webcam).
7.  **Speech Command Nav:** "Computer, go to Projects" using Web Speech API.
8.  **Haptic Feedback:** Use the Vibration API on mobile when users hover over major CTA buttons.

### 🧊 3D & Creative Coding (WebGL/Three.js/TresJS)
9.  **Interactive 3D Dakar Map:** A low-poly 3D map of Dakar. Hovering over districts shows "Projects built here" or "Offices I've worked at".
10. **Fluid Simulation Cursor:** Instead of a trailing dot, a full Navier-Stokes fluid simulation that mixes colors as the mouse moves.
11. **Project "Product Unboxing":** Instead of a screenshot, a 3D model of a phone/laptop. User can rotate/open the laptop to see the project video playing on the screen.
12. **GLSL Shader Backgrounds:** Write custom fragment shaders for backgrounds that look like liquid metal or cyberpunk grid lines. No heavy images.
13. **Physics-Based Grid:** The project cards have physics bodies. Users can pick them up and throw them around (Matter.js).
14. **3D Commit Graph:** Visualize your GitHub contribution graph as a 3D cityscape where height = number of commits.
15. **ASCII Video Renderer:** A toggle to render your entire site (or just videos) as colored ASCII text characters in real-time.
16. **"X-Ray" Mode:** A toggle that turns the UI into a wireframe blueprint, showing the underlying Vue component names on hover.

### 🛠️ "Hardcore" Engineering (DevOps/Backend Flex)
17. **Live Server Telemetry:** A WebSocket connection showing *real* RAM/CPU usage of your portfolio's server in real-time.
18. **Interactive Terminal (WebContainer):** A terminal window where users can actually run `npm install` and `node index.js` to run a "Hello World" script *in their browser*.
19. **RAG-Powered Chat:** Vector database (Pinecone/Weaviate) indexing your CV + Projects. Answers "Did Cheikh use Docker on the Koala project?" with citations.
20. **Odoo Dependency Visualizer:** An interactive D3.js force-directed graph showing relationships between Odoo modules you've built.
21. **CI/CD Pipeline Visualizer:** An animated diagram showing exactly how your code goes from VS Code -> GitHub -> Tests -> Production.
22. **Dynamic OG Image Generator:** A dedicated route `/api/og?title=...` that generates social images on the fly using Vue templates (Satori).
23. **Real-time Multiplayer (PartyKit):** Show "3 other developers are here" with distinct cursors moving live on screen.
24. **"Code Diff" Case Studies:** A slider comparing "Spaghetti Code" vs "Refactored Code" for a specific function to demonstrate code quality.
25. **Request Log Stream:** A scrolling matrix-style log showing (anonymized) requests hitting your server in real-time.

### 🎨 Unique UX/Micro-Interactions
26. **Magnetic Buttons:** Buttons that physically "stick" to the cursor when it gets close.
27. **"Time Travel" Toggle:** A slider that changes the design trends of the site (2010s Skeuomorphic -> 2020s Flat -> 2025s Glassmorphism).
28. **Smart Copy:** When copying code snippets, inject a credit line "Copied from Cheikh's Portfolio" automatically.
29. **Infinite Scroll "Loop":** The project list never ends; it seamlessly loops back to the start (WebGL carousel).
30. **Dynamic Favicon:** The favicon changes based on system theme or "Playing" status.
31. **Interactive "Availability" Calendar:** Don't just say "Available". Show a heatmap of your booking availability for the next 3 months.
32. **Global Command Palette (`Cmd+K`):** But make it functional. Allow typing `theme dark`, `go projects`, or `email copy`.
33. **Scroll-Driven Animations:** Use GSAP ScrollTrigger to disassemble/reassemble text as it enters the viewport.
34. **Custom "Right Click" Menu:** Override context menu to offer "Copy Email", "Download CV", "Source Code".

### 📊 Data & Analytics (Visualized)
35. **WakaTime Coding Stats:** Real-time chart showing "What I coded in the last 7 days" (Languages/Editors).
36. **Lighthouse Score Widget:** Run a Lighthouse audit *on yourself* live and display the 100/100 scores.
37. **Carbon Footprint Calculator:** Estimate the CO2 emissions of viewing your page based on asset size.
38. **"Tech Radar":** A ThoughtWorks-style radar chart categorizing tech into "Adopt", "Trial", "Assess", "Hold".

### 💼 Business/Utility
39. **Project Cost Estimator:** A multi-step wizard asking "Mobile or Web?", "Design needed?", "Deadline?" and giving a rough price range.
40. **Meeting "Stock Market":** Dynamic pricing for your hourly rate based on your current demand/load (Joke/Concept).

---

## 3. The "Interesting Pages" Expansion (40 New Page Ideas)

*This section specifically focuses on **standalone pages (`/page`)** that provide unique value, storytelling, or utility, avoiding generic "filler" content.*

### 🛠️ Developer Utility Pages
41. **`/uses/software`**: A living list of your VS Code extensions, terminal theme, font (JetBrains Mono?), and exact JSON settings.
42. **`/uses/hardware`**: An interactive desk setup where hovering over items (MacBook, Monitor, Keychron) reveals their specs and review.
43. **`/snippets`**: A searchable library of "Code I copy-paste everyday" (e.g., specific regex, Tailwind configs, Odoo snippets).
44. **`/design-system`**: A live Styleguide/Storybook page showing every button, input, and color used on the site.
45. **`/api`**: Documentation for your portfolio's public API. (Yes, let people `GET /api/me` to get your JSON resume).
46. **`/ssh`**: A fully functional web-based SSH terminal emulator. `cat skills.txt`, `whoami`, `sudo rm -rf /` (with easter eggs).
47. **`/changelog`**: A timeline of the *site's* evolution, from v1 (HTML/CSS) to current Nuxt v4, with screenshots.
48. **`/stack`**: A force-directed node graph visualization of every technology you know and how they connect.

### 🧠 Knowledge & Growth
49. **`/now`**: A ["Now Page"](https://nownownow.com/about) updating visitors on what you're focused on *this specific month* (not career history).
50. **`/library`**: A virtual bookshelf of technical books/articles you've read, with your personal 1-sentence takeaways and ratings.
51. **`/ideas`**: A list of "Apps I haven't built yet". Open source your brain. Shows creativity and generosity.
52. **`/anti-resume`**: A humble list of failures, rejected apps, and production bugs you caused (and what you learned). Shows resilience.
53. **`/til`**: "Today I Learned". Micro-blog posts (tweet size) about technical discoveries.
54. **`/roadmap`**: A public Trello-like view of your career goals for the next 1-5 years.
55. **`/manifesto`**: Your core engineering principles (e.g., "Offline First", "Privacy by Default").
56. **`/notes`**: A "Digital Garden" of interconnected thoughts, not polished articles.

### 🤝 Social & Community
57. **`/ama`**: "Ask Me Anything". A form where people ask questions, and you answer publically.
58. **`/guestbook`**: A retro-modern signature wall where visitors can sign with their GitHub account.
59. **`/mentorship`**: A page dedicated to helping juniors, with a calendar to book free 15min slots.
60. **`/reviews`**: A collection of code reviews you've done on open source projects (links to PRs). Shows you can read code, not just write it.
61. **`/podcasts`**: A curated playlist of specific podcast episodes that shaped your thinking.
62. **`/thanks`**: A "Credits" page listing every open-source library, font, and tool used to build the site.
63. **`/clients`**: Instead of logos, use mini-case studies: "Problem -> My Solution -> Result".

### 📊 Data Visualization
64. **`/dashboard`**: A master control center showing live stats: GitHub commits today, current Spotify track, server uptime, steps walked.
65. **`/stats`**: Visualized stats of your code repositories (languages breakdown, lines of code written).
66. **`/map`**: An interactive 3D globe showing where you are, where you've clients, and conferences you've attended.
67. **`/finance`**: (Bold transparency) A breakdown of your "Cloud Costs" or "Project Revenue" (if comfortable).
68. **`/audit`**: A page that runs a live Lighthouse/Accessibility audit on the current page and displays the score.

### 🎮 Interactive & Creative
69. **`/game`**: A simple, custom-coded game (like "Bug Smasher" or a typing test) to keep visitors engaged.
70. **`/playground`**: (Expand existing) A grid of iframe mini-experiments (Canvas, WebGL, CSS art).
71. **`/challenge`**: A "Recruiter Filter". A small CTF (Capture The Flag) puzzle. Solving it reveals your direct phone number.
72. **`/gallery`**: If you do photography or generative art, a WebGL gallery.
73. **`/music`**: A "Coding Flow" playlist generator or visualization.

### 💼 Business & Professional
74. **`/pricing`**: A transparent rate card or "Project Calculator" for freelance work. (e.g., "Mobile App starts at $X").
75. **`/availability`**: A heatmap calendar showing your booking capacity for the next 6 months.
76. **`/cv`**: An HTML-first, print-perfect interactive Resume (not just a PDF download).
77. **`/onboarding`**: A private page for new clients explaining "How we will work together" (Tools, Communication, Payments).
78. **`/case-studies/lic`**: A deep-dive page specifically for LIC.
79. **`/case-studies/gnawalma`**: A deep-dive page specifically for Gnawalma.
80. **`/settings`**: A global settings page for the visitor to configure the site (Font size, Theme, Sound, Animation speed).

---

## 4. Immediate Action Plan

1.  **Prioritize:** Pick 3 features from the list above to implement *this week*. (Recommendation: **Cmd+K**, **Uses Page**, and **RSS Feed**).
2.  **Design Content Layout:** Create a `content/` directory and a `[...slug].vue` page to start rendering markdown.
3.  **Execute:** I can assist with implementing any of these immediately.
