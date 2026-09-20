# 📱 NEXUS: The Companion App — Architectural Blueprint
> **Version :** 2.0 (Definitive Specification)
> **Target :** Admin/Super-User (Cheikh Ahmed Tijani Traore)
> **Stack :** Flutter + GetX + Supabase
> **Design :** Unified "Clean Engineering" (Web Replica)

---

## 1. Vision & Architecture

**Concept :** "L'extension neurale de votre portfolio". Une application native Flutter conçue pour piloter votre présence numérique en temps réel. Elle ne doit pas ressembler à un outil d'administration générique, mais à une partie intégrante de votre écosystème "Traore.Dev".

**Choix Architecturaux :**
*   **Framework :** **Flutter**. Pour le rendu pixel-perfect et la performance native.
*   **State Management :** **GetX**. Choisi pour sa simplicité, sa gestion de route intégrée et son injection de dépendances "zero-boilerplate". Idéal pour un développement rapide et maintenable par un seul développeur.
*   **Backend :** **Supabase**.
    *   *Database:* PostgreSQL pour les données structurées (Leads, Status, Projects).
    *   *Realtime:* Pour les mises à jour d'état instantanées (Status, Analytics Pulse).
    *   *Storage:* Pour l'upload de CV et les assets.
    *   *Edge Functions:* Pour les notifications Push (déclenchées par les inserts DB).
*   **Navigation :** **Persistent Bottom Bar** flottante (style Glassmorphism), imitant la navigation mobile de votre site web.

---

## 2. Design System: "Web-to-Native"

L'objectif est une continuité visuelle totale. L'app doit ressembler à une "application système" de votre site.

### 🎨 Palette & Thème (GetX ThemeService)
*   **Mode Sombre (Défaut) :** Fond `#030712` (Gray-950), Surfaces `#111827` (Gray-900).
*   **Mode Clair :** Fond `#F9FAFB` (Gray-50), Surfaces `#FFFFFF` (White).
*   **Accents :** `Primary-600` et `Amber-600` pour les actions principales et les gradients.
*   **Glassmorphism :** Utilisation intensive de `BackdropFilter` pour les headers et la navbar.

### 🧩 Composants Clés
1.  **NexusNavBar :** Une pilule flottante en bas d'écran, fond flouté, icônes actives avec une lueur (Glow).
2.  **StatCard :** Cartes `Rounded-2xl` (24px) avec bordures subtiles (`Colors.white10`) et ombres douces.
3.  **GlitchText :** Widget personnalisé pour les titres, reprenant l'effet de votre site.

### ✒️ Typographie
*   **Titres :** `Space Grotesk` (Google Fonts). Gras, espacement serré.
*   **Corps :** `Archivo` (Google Fonts). Lisible, technique.

---

## 3. Spécifications Détaillées des Fonctionnalités

### A. Dashboard (Le Cockpit)
*Vue d'ensemble de l'état du système.*

*   **1. Status Controller (Option A - Switch Minimalist)**
    *   *UI:* Une carte en haut avec votre photo, et un simple `CupertinoSwitch` ou `Switch` stylisé à côté du texte "Disponibilité".
    *   *Tech:* Écriture directe dans la table `config` de Supabase via `StatusController`.
*   **2. Analytics (Option A + C - Hybrid)**
    *   *UI:* Une rangée de 3 cartes ("Vues", "Visiteurs", "Top Source") + Un indicateur "Pulse" (Cercle animé) montrant les utilisateurs en temps réel.
    *   *Tech:* Supabase Realtime pour le compteur "Live", appel API agrégé pour les stats journalières.
*   **3. "Now Coding" Pomodoro (Option C)**
    *   *UI:* Un widget Timer circulaire. Tap pour démarrer un focus de 25min. Met à jour le statut du site en "Focus Mode".
    *   *Tech:* `Timer` local dans GetX + Sync Supabase au démarrage/fin.

### B. Inbox (Leads & Opportunités)
*Gestion centralisée des contacts entrants.*

*   **UI (Option A - Liste Simple) :**
    *   Une liste propre et aérée des derniers messages. Indicateur "Non lu" (point bleu).
    *   **Détail :** Page affichant le message complet.
*   **Actions (Option B - Actionable) :**
    *   Bouton "Répondre" flottant (FAB) ou en bas de page.
    *   *Action:* Ouvre l'app Gmail/Mail native avec l'adresse du contact pré-remplie (`url_launcher`).
*   **Notifications (Option B) :**
    *   Supabase Edge Function détecte un nouvel `insert` dans la table `leads` -> Envoie une notif via FCM (Firebase Cloud Messaging).
    *   Clic sur la notif -> Ouvre directement le détail du message dans l'app (Deep Linking via GetX).

### C. Content Manager (Le Cerveau)
*Alimentation du contenu dynamique.*

*   **1. Quick Capture (Option B - Share Extension) :**
    *   *UX:* Vous êtes sur Chrome/Twitter, vous voyez un lien cool -> "Partager" -> "Nexus".
    *   *UI:* Une modale native s'ouvre pour confirmer le titre/tag.
    *   *Tech:* Package `receive_sharing_intent`.
*   **2. Reading List (Option A - CRUD) :**
    *   *UI:* Liste simple des livres/articles. Bouton "+" pour ajouter manuellement (Titre, Auteur, Statut de lecture).
*   **3. Tech Stack (Option A - Tags) :**
    *   *UI:* Un nuage de chips (tags). Tap pour supprimer, Champ texte pour ajouter. Simple et efficace.

### D. Admin Tools (Configuration)
*Contrôle profond du système.*

*   **1. Maintenance Mode (Option C - Biometric) :**
    *   *UI:* Un switch rouge "Danger".
    *   *Security:* Tenter de l'activer déclenche `local_auth` (FaceID/Fingerprint). Si succès -> Update Supabase config.
*   **2. Project Visibility (Option C - Drag & Drop) :**
    *   *UI:* Liste `ReorderableListView`. Maintenir pour déplacer, Switch à droite pour cacher/montrer.
*   **3. Remote Dark Mode (Option B - Override) :**
    *   *UI:* `SegmentedControl` (Auto | Light | Dark) pour forcer le thème du site à distance.
*   **4. Resume Manager (Option B - Upload) :**
    *   *UI:* Bouton "Update CV". Ouvre le sélecteur de fichiers.
    *   *Tech:* Upload vers Supabase Storage bucket `assets` -> remplace `cv.pdf`.

### E. Social Tools (Networking)
*   **1. Quick Share (Option B - QR Code) :**
    *   *UI:* Une icône QR dans la navbar ou le dashboard. Tap -> Affiche votre QR Code perso en plein écran (haute luminosité auto).
*   **2. Guestbook (Option B - Approve First) :**
    *   *UI:* Liste des messages en attente. Swipe droite pour valider (Public), gauche pour rejeter.

---

## 4. Plan de Développement (Roadmap)

### Phase 1 : Setup & Core (Jours 1-2)
1.  **Init:** `flutter create` + `git init`.
2.  **Supabase:** Configuration du projet, tables (`leads`, `config`, `content`), Auth.
3.  **Base UI:** Setup du thème GetX, Polices, et de la `NexusNavBar`.

### Phase 2 : Dashboard & Leads (Jours 3-5)
1.  **Status:** Implémenter le switch de disponibilité connecté à Supabase.
2.  **Inbox:** Liste des messages (Read only d'abord), puis détail et réponse mail.
3.  **Push Notif:** Configurer FCM et Supabase Edge Function.

### Phase 3 : Content & Tools (Jours 6-8)
1.  **Quick Capture:** Intégrer le partage natif Android/iOS.
2.  **Admin:** Drag & Drop des projets et Upload de CV.
3.  **Security:** Ajouter la biométrie sur les actions sensibles.

---

## 5. Case Study Structure (Pour le Portfolio)

Quand l'app sera finie, voici comment la présenter sur votre site :

*   **Titre :** "Nexus: The Pocket Command Center"
*   **Le Défi :** "Gérer une identité numérique dynamique sans être enchaîné à un ordinateur."
*   **La Solution :** "Une architecture découplée (Mobile Controller -> Realtime DB -> Static Site) permettant un contrôle instantané."
*   **Key Features :**
    *   *Real-time Availability:* "From pocket to production in 100ms."
    *   *Biometric Security:* "Admin-grade protection."
    *   *Seamless Design:* "Flutter UI that mirrors the web experience."
*   **Tech Stack :** Flutter, GetX, Supabase, Edge Functions.

---

## 6. Structure des Écrans (Screen Flow)

1.  **Splash Screen :** Logo animé (Glitch effect).
2.  **Login Screen :** Email/Password (Admin only). Design minimaliste.
3.  **Main Layout (Scaffold avec BottomNav) :**
    *   **Tab 1: Dashboard:** Status, Pulse, Pomodoro, Quick Stats.
    *   **Tab 2: Inbox:** Liste des leads. -> *Sub-screen: Lead Detail.*
    *   **Tab 3: Content:** Reading List, Stack, Quick Capture logs. -> *Sub-screen: Add Item.*
    *   **Tab 4: Admin:** Maintenance, Dark Mode, CV, Projects. -> *Sub-screen: QR Code.*

---

## 7. Packages Recommandés (pubspec.yaml)

```yaml
dependencies:
  flutter:
    sdk: flutter
  # Core & State
  get: ^4.6.6
  supabase_flutter: ^2.0.0
  
  # UI & Design
  google_fonts: ^6.1.0
  flutter_animate: ^4.5.0
  glassmorphism: ^3.0.0 # Ou custom implementation
  phosphor_flutter: ^2.0.0 # Ou heroicons equivalent
  
  # Functionality
  url_launcher: ^6.2.0
  file_picker: ^8.0.0
  local_auth: ^2.1.6
  share_handler: ^0.0.18 # Pour Quick Capture
  qr_flutter: ^4.1.0
  connectivity_plus: ^5.0.2
  
  # Background & Sync
  workmanager: ^0.5.2
```
