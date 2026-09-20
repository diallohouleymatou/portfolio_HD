<script setup lang="ts">
import { CONTACT, PROFILE, SKILLS, type Resume } from '@/content/resume'

defineProps<{ resume: Resume }>()
</script>

<template>
  <header class="section hero">
    <p class="eyebrow reveal">{{ PROFILE.location }}</p>
    <h1 class="display reveal">{{ PROFILE.name }}</h1>
    <p class="role reveal">{{ resume.role }}</p>
    <p class="lead reveal">{{ resume.summary }}</p>
    <div class="actions reveal">
      <a class="button" :href="PROFILE.cv" target="_blank" rel="noopener">{{ resume.ui.downloadCv }}</a>
      <a class="button ghost" :href="`mailto:${CONTACT.email}`">{{ resume.ui.contact }}</a>
    </div>
  </header>

  <section class="section" id="about">
    <p class="eyebrow reveal">{{ resume.ui.about }}</p>
    <div class="prose">
      <p v-for="paragraph in resume.about" :key="paragraph" class="lead reveal">{{ paragraph }}</p>
    </div>
  </section>

  <section class="section" id="work">
    <p class="eyebrow reveal">{{ resume.ui.work }}</p>
    <ol class="timeline">
      <li v-for="job in resume.work" :key="`${job.company}-${job.period}`" class="job reveal">
        <div class="job-head">
          <h3>
            {{ job.title }}
            <span v-if="job.current" class="badge">{{ resume.ui.current }}</span>
          </h3>
          <p class="meta">{{ job.period }}</p>
        </div>
        <p class="company">{{ job.company }} · {{ job.location }}</p>
        <ul class="highlights">
          <li v-for="line in job.highlights" :key="line">{{ line }}</li>
        </ul>
      </li>
    </ol>
  </section>

  <section class="section" id="projects">
    <p class="eyebrow reveal">{{ resume.ui.projects }}</p>
    <div class="timeline">
      <div v-for="project in resume.projects" :key="project.name" class="job reveal">
        <div class="job-head">
          <h3>
            {{ project.name }}
          </h3>
          <p v-if="project.link" class="meta">
            <a :href="project.link" target="_blank" rel="noopener">Lien ↗</a>
          </p>
        </div>
        <p class="highlights" style="padding-left: 0;">{{ project.description }}</p>
        <ul class="tags" style="margin-top: 1rem;">
          <li v-for="tech in project.tech" :key="tech" style="font-size: 0.85rem; padding: 0.3rem 0.8rem;">
            {{ tech }}
          </li>
        </ul>
      </div>
    </div>
  </section>

  <section class="section" id="skills">
    <p class="eyebrow reveal">{{ resume.ui.skills }}</p>
    <ul class="tags reveal">
      <li v-for="skill in SKILLS" :key="skill.name">
        <component :is="skill.icon" class="icon" aria-hidden="true" />
        {{ skill.name }}
      </li>
    </ul>

    <p class="eyebrow spaced reveal">{{ resume.ui.education }}</p>
    <ol class="timeline">
      <li v-for="school in resume.education" :key="school.school" class="job reveal">
        <div class="job-head">
          <h3>{{ school.degree }}</h3>
          <p class="meta">{{ school.period }}</p>
        </div>
        <p class="company">{{ school.school }}</p>
      </li>
    </ol>

    <p class="eyebrow spaced reveal">{{ resume.ui.awards }}</p>
    <ul class="certs">
      <li v-for="award in resume.awards" :key="award.name" class="reveal">
        <h3>{{ award.name }}</h3>
        <p class="meta">{{ award.issuer }} · {{ award.meta }}</p>
      </li>
    </ul>
  </section>

  <footer class="section contact" id="contact">
    <p class="eyebrow reveal">{{ resume.ui.contact }}</p>
    <h2 class="display reveal">{{ resume.ui.contactTitle }}</h2>
    <p class="lead reveal">{{ resume.ui.contactLead }}</p>
    <a class="mail reveal" :href="`mailto:${CONTACT.email}`">{{ CONTACT.email }}</a>
    <p class="meta reveal">
      <a :href="CONTACT.linkedin" target="_blank" rel="noopener">LinkedIn</a>
      <a :href="CONTACT.github" target="_blank" rel="noopener">GitHub</a>
    </p>
    <p class="meta reveal">© {{ new Date().getFullYear() }} {{ PROFILE.name }}. {{ resume.ui.rights }}</p>
  </footer>
</template>

<style scoped lang="scss">
.hero {
  min-height: 100svh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  gap: 1.5rem;
}

.role {
  align-self: flex-start;
  padding: 0.5rem 1.4rem;
  border-radius: 0.6rem;
  background: var(--ribbon-bg);
  color: var(--ribbon-fg);
  font-family: var(--font-display);
  font-size: clamp(1.15rem, 2.4vw, 1.75rem);
  font-weight: 500;
  letter-spacing: 0.04em;
  text-transform: uppercase;
  rotate: -2deg;
  box-shadow: var(--shadow);
}

.actions {
  display: flex;
  flex-wrap: wrap;
  gap: 0.75rem;
  margin-top: 1rem;
}

.button {
  padding: 0.85rem 1.6rem;
  border-radius: 999px;
  background: var(--accent);
  color: var(--on-accent);
  box-shadow: var(--shadow);
  font-weight: 800;
  font-size: 1.15rem;
  text-decoration: none;
  transition: transform 0.3s ease;

  &:hover {
    transform: translateY(-2px);
  }

  &.ghost {
    background: var(--card);
    color: var(--fg);
    box-shadow: none;
  }
}

.prose {
  display: grid;
  gap: 1.25rem;
  margin-top: 2rem;
}

.timeline {
  list-style: none;
  margin-top: 3rem;
  display: grid;
  gap: 2.5rem;
}

.job,
.certs li {
  padding: clamp(1.5rem, 3vw, 2.25rem);
  border-radius: 2rem;
  background: var(--card);
  box-shadow: var(--shadow);
}

.job-head {
  display: flex;
  flex-wrap: wrap;
  align-items: baseline;
  justify-content: space-between;
  gap: 0.5rem;

  h3 {
    font-family: var(--font-display);
    font-size: clamp(1.35rem, 2.6vw, 2rem);
    font-weight: 600;
  }
}

.badge {
  margin-left: 0.6rem;
  padding: 0.15rem 0.6rem;
  border-radius: 999px;
  background: var(--ribbon-bg);
  color: var(--ribbon-fg);
  font-weight: 800;
  font-size: 0.8rem;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  vertical-align: middle;
}

.company {
  margin-top: 0.35rem;
  color: var(--accent);
  font-size: 1.15rem;
  font-weight: 800;
}

.highlights {
  margin-top: 1rem;
  padding-left: 1.1rem;
  display: grid;
  gap: 0.5rem;
  color: var(--muted);
  line-height: 1.6;
  font-size: 1.2rem;
  max-width: 60ch;
}

.meta {
  font-weight: 700;
  font-size: 0.95rem;
  color: var(--muted);
  display: flex;
  gap: 1.25rem;
  flex-wrap: wrap;
}

.tags {
  list-style: none;
  display: flex;
  flex-wrap: wrap;
  gap: 0.6rem;
  margin-top: 2rem;

  li {
    display: flex;
    align-items: center;
    gap: 0.6rem;
    padding: 0.6rem 1.1rem 0.6rem 0.9rem;
    border-radius: 999px;
    background: var(--card);
    box-shadow: var(--shadow);
    font-size: 1.05rem;
    font-weight: 800;
    transition: transform 0.3s ease;

    &:hover {
      transform: translateY(-3px) rotate(-1.5deg);
    }
  }

  .icon {
    width: 1.4rem;
    height: 1.4rem;
    color: var(--accent);
  }
}

.spaced {
  margin-top: 5rem;
}

.certs {
  list-style: none;
  margin-top: 2rem;
  display: grid;
  gap: 1.5rem;

  h3 {
    font-family: var(--font-display);
    font-size: 1.35rem;
    font-weight: 600;
  }

  .meta {
    margin-top: 0.35rem;
  }
}

.contact {
  min-height: 80svh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  gap: 1.5rem;
}

.mail {
  font-size: clamp(1.35rem, 4vw, 2.75rem);
  font-family: var(--font-display);
  font-weight: 600;
  color: var(--accent);
  text-decoration: none;
  border-bottom: 3px solid currentColor;
  align-self: flex-start;
}
</style>
