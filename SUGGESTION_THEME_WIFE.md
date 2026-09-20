# PROPOSITION : TRANSITION DU SITE WEB VERS "AURA"

Cette proposition concerne la refonte du **site web (Portfolio Nuxt.js)** pour votre épouse. L'objectif est de conserver la performance technique et l'architecture (Nuxt 3, Tailwind, Supabase) tout en changeant radicalement l'identité visuelle pour correspondre à son profil de développeuse.

---

## 1. Direction Artistique : "Digital Garden"

Le thème actuel "Nexus" est industriel, brut, orienté "Command Center".
Le thème proposé **"AURA"** serait plus **organique, éditorial et épuré**.

### Identité Visuelle
*   **Ambiance :** Moins "Cyberpunk", plus "Atelier d'Artiste Digital".
*   **Palette (`tailwind.config.ts`) :**
    *   Remplacer le **Rouge/Ambre** agressif par des tons **Pastels Saturés** (Lilas, Menthe, Corail).
    *   Fond : Passer d'un noir profond (`gray-950`) à un "off-white" cassé (pour le mode clair) ou un bleu nuit très profond (`slate-900`) pour le mode sombre, pour réduire le contraste dur.
*   **Typographie :**
    *   Titres : Remplacer `SpaceGrotesk` (Technique) par une Serif élégante comme **`Playfair Display`** ou une Sans-Serif géométrique douce comme **`Outfit`**.
    *   Corps : `Inter` ou `DM Sans` pour une lisibilité maximale.

---

## 2. Refactoring du Code (Fichier par Fichier)

Voici les modifications précises à effectuer dans le codebase Nuxt :

### A. La Configuration Globale
*   **`tailwind.config.ts`** :
    *   Redéfinir l'objet `colors.primary`.
    *   Modifier `fontFamily` pour intégrer les nouvelles polices (à ajouter via `@nuxt/fonts` ou `nuxt.config.ts`).
*   **`app/app.vue`** :
    *   Supprimer ou modifier le composant `CustomCursor` s'il est trop "gamer". Un curseur natif ou un simple cercle subtil est souvent plus professionnel pour un profil moins "hardcore tech".
    *   Modifier les métadonnées SEO (`useSeoMeta`) avec ses infos.

### B. Les Composants Clés (`app/components/`)
1.  **`HomeHero.vue`** :
    *   C'est la première impression. Le style actuel (gros titres gras, badges techniques) peut être adouci.
    *   *Suggestion :* Une mise en page asymétrique avec sa photo à droite et une intro typographique soignée à gauche, sans badges trop lourds.
2.  **`ProjectCard.vue`** :
    *   *Actuel :* Bordures épaisses, effets de survol agressifs, mode "Confidentiel" très marqué.
    *   *Refonte :* Supprimer les bordures (`border-0`), utiliser des ombres portées douces (`shadow-xl`), et arrondir davantage les angles (`rounded-3xl` → `rounded-[2rem]`).
    *   L'image de couverture doit prendre plus de place, style "Magazine".
3.  **`AppHeader.vue`** :
    *   Remplacer l'effet de flou "Glassmorphism" industriel par un fond uni ou transparent qui devient opaque au scroll.

### C. Le Contenu & Les Données
1.  **`app/data/projects.ts`** :
    *   Remplacer vos projets (Odoo, Koala) par les siens.
    *   Si elle a des projets visuels, mettre l'accent sur les champs `image`.
2.  **`app/data/experience.ts`** :
    *   Adapter son parcours. Le format chronologique actuel est standard et fonctionnera très bien.
3.  **`locales/fr.json`** :
    *   Réécrire le **Manifesto**. Le vôtre est très "Ops/Security". Le sien pourrait être axé sur "User Experience", "Clean Code", "Accessibility", etc.

---

## 3. UX et Fonctionnalités Spécifiques

### La Page "Stack" (`pages/stack.vue`)
*   Actuellement très orientée Hardware/Linux.
*   **Adaptation :** Si elle est plus Frontend/Design, transformer cette page en une galerie visuelle de ses outils (Figma, VS Code thèmes, Inspirations) plutôt qu'une liste de specs techniques.

### Le Système de Contact
*   Garder le formulaire actuel connecté à Supabase/Firebase. C'est un atout majeur.
*   Juste changer le ton du message de succès ("Message transmis au QG" → "Merci, je vous réponds très vite").

---

## 4. Checklist de Migration Rapide

Pour transformer votre portfolio en le sien en une après-midi :

1.  **Dupliquer le repo.**
2.  **Nettoyage :** Supprimer vos articles de blog (`content/case-studies/`).
3.  **Assets :** Remplacer le dossier `public/assets/images` (surtout `headshot.jpg` et les covers de projets).
4.  **Config :** Mettre à jour `nuxt.config.ts` (titre du site, URL).
5.  **Supabase :** Connecter son site à *sa* propre instance Supabase (créée via le script SQL fourni) pour qu'elle ait ses propres stats et leads.

---

**Note Finale :** L'architecture est agnostique. C'est le CSS et les données JSON qui donnent le ton. En changeant simplement la police et les couleurs primaires dans Tailwind, vous aurez déjà fait 80% du travail de différenciation.

### Annexe : Configuration Tailwind "Aura"

Voici la configuration à copier-coller dans `tailwind.config.ts` pour obtenir le thème Pastel/Organique :

```typescript
// tailwind.config.ts (Thème Aura)
import type { Config } from 'tailwindcss'
import defaultTheme from 'tailwindcss/defaultTheme'

export default <Partial<Config>>{
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#f0fdfa',
          100: '#ccfbf1',
          200: '#99f6e4',
          300: '#5eead4',
          400: '#2dd4bf',
          500: '#14b8a6', // Sarcelle (Teal) principal
          600: '#0d9488',
          700: '#0f766e',
          800: '#115e59',
          900: '#134e4a',
          950: '#042f2e',
        },
        // Optionnel : Ajouter une couleur secondaire "Lavande"
        secondary: {
          500: '#a78bfa',
        }
      },
      fontFamily: {
        // Outfit pour le corps (moderne, géométrique)
        sans: ['Outfit', ...defaultTheme.fontFamily.sans],
        // Playfair Display pour les titres (élégant)
        display: ['Playfair Display', ...defaultTheme.fontFamily.serif],
        mono: ['JetBrains Mono', ...defaultTheme.fontFamily.mono],
      },
    }
  }
}
```