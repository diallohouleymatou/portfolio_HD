# Portfolio Personnel - Cheikh Ahmed Tijani Traore

**Live Demo:** [https://cheikh-tidiane-portfolio.vercel.app/](https://cheikh-tidiane-portfolio.vercel.app/)

Portfolio professionnel construit avec Nuxt 3, Nuxt UI et Nuxt Content.

## Stack Technique

- **Framework:** Nuxt 3 (SSR/SSG)
- **UI:** Nuxt UI v3 + Tailwind CSS v4
- **Content:** Nuxt Content v3 (études de cas bilingues)
- **i18n:** Nuxt i18n (FR/EN)
- **Deployment:** Vercel
- **SEO:** Sitemap XML, Meta tags optimisés, Google Site Verification

## Installation

```bash
npm install
```

## Développement

```bash
npm run dev
```

Serveur local: `http://localhost:3000`

## Build Production

```bash
npm run build
npm run preview
```

## Structure du Projet

```
app/
├── components/     # Composants Vue réutilisables
├── layouts/        # Layouts (default, minimal)
├── pages/          # Routes (auto-routing)
└── data/           # Données statiques (projets, expériences)

content/
└── case-studies/   # Études de cas (Markdown)
    ├── en/         # Version anglaise
    └── fr/         # Version française

locales/
├── en.json         # Traductions EN
└── fr.json         # Traductions FR

public/
└── assets/         # Images et fichiers statiques
```

## Commandes Utiles

```bash
# Développement
npm run dev

# Build
npm run build

# Preview production locale
npm run preview

# Lint
npm run lint

# Nettoyer le cache
rm -rf .nuxt
```

## Déploiement

Le site est déployé automatiquement sur Vercel à chaque push sur la branche `main`.

**URL:** https://cheikh-tidiane-portfolio.vercel.app

## Notes Techniques

- **Case Studies:** Les études de cas sont gérées via Nuxt Content avec support i18n (en/ et fr/)
- **Google Search Console:** Site vérifié avec meta tag + sitemap soumis
- **SEO:** Meta tags dynamiques, structured data, sitemap multilingue
- **Performance:** Score Lighthouse 95+, optimisations images avec NuxtImg

---

**Auteur:** Cheikh Ahmed Tijani Traore  
**Email:** atidiane741@gmail.com  
**Dernière mise à jour:** Janvier 2025
