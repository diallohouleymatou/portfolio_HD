# Nexus Companion & Portfolio Integration - Master Plan

## Objective
Create a seamless, bi-directional integration between the Nexus Companion mobile app (Flutter) and the Web Portfolio (Nuxt 3). The mobile app serves as a remote control and monitoring center for the website.

## 1. Supabase Integration (The Bridge)
**Credentials:**
- URL: `https://busoqxipufmulgiwjivx.supabase.co`
- Key: `sb_publishable_vWvQ_Xld0ot_RjqwDnWVdA_UAiLAuH7`

**Database Schema:**
- `settings`: `maintenance_mode` (bool), `website_theme` (text), `project_visibility` (jsonb).
- `leads`: Contact form messages with real-time sync.
- `reading_list` & `skills`: Content management.

## 2. Web Portfolio (Nuxt 3)
- **Supabase Client:** Client-side integration.
- **Contact Form:** Sends data to `leads` table.
- **Real-time Monitoring:** 
  - Maintenance Mode overlay triggers instantly.
  - Theme syncs with mobile app settings.
  - **Visitor Tracking:** Uses Supabase Presence to report live user count.
- **Project Control:** Projects hidden/shown instantly via Mobile App.

## 3. Mobile App (Flutter)
### A. Visuals & UX
- **Default Theme:** Light Mode.
- **Theme Control:** Toggle both Mobile and Website themes independently.

### B. Remote Control (The "Gauntlet")
- **Maintenance Mode:** Full site lockout.
  - **Security:** Protected by **Biometrics** (FaceID/Fingerprint) or PIN.
- **Project Visibility:** Hide/Show specific projects from the portfolio in real-time.
- **QR Sharing:** Built-in QR generator for instant portfolio sharing.

### C. Real-time Monitoring & Notifications
- **Live Pulse:** Displays real-time visitor count from the web.
- **Lead Alerts:** In-app notifications for new contact form submissions.
  - Tapping alerts navigates directly to the Inbox.

### D. Asset Management
- **Resume Sharing:** Share your public CV PDF directly from the app.

## 4. Security Configuration
- **Android:** `USE_BIOMETRIC` permission added.
- **iOS:** `NSFaceIDUsageDescription` added to `Info.plist`.