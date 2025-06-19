<template>
  <div v-if="showAuthors" class="author-info">
    <div class="author-section">
      <h3>Authors</h3>
      <div class="authors-list">
        <div v-for="author in authors" :key="author.name" class="author">
          <span class="author-name">{{ author.name }}</span>
          <span v-if="author.email" class="author-email">
            <a :href="`mailto:${author.email}`">{{ author.email }}</a>
          </span>
          <span v-if="author.affiliation" class="author-affiliation">{{ author.affiliation }}</span>
        </div>
      </div>
      <div v-if="lastUpdated" class="last-updated">
        <strong>Last Updated:</strong> {{ formatDate(lastUpdated) }}
      </div>
    </div>
  </div>
</template>

<script setup>
import { computed } from 'vue'
import { useData } from 'vitepress'

const { frontmatter } = useData()

const authors = computed(() => frontmatter.value.authors || [])
const lastUpdated = computed(() => frontmatter.value.lastUpdated)
const showAuthors = computed(() => authors.value.length > 0)

const formatDate = (dateString) => {
  if (!dateString) return ''
  const date = new Date(dateString)
  return date.toLocaleDateString('en-US', { 
    year: 'numeric', 
    month: 'long', 
    day: 'numeric' 
  })
}
</script>

<style scoped>
.author-info {
  margin: 2rem 0;
  padding: 1rem;
  background-color: var(--vp-c-bg-soft);
  border-radius: 8px;
  border-left: 4px solid var(--vp-c-brand-1);
}

.author-section h3 {
  margin: 0 0 1rem 0;
  color: var(--vp-c-text-1);
  font-size: 1.1rem;
}

.authors-list {
  display: flex;
  flex-direction: column;
  gap: 0.75rem;
}

.author {
  display: flex;
  flex-direction: column;
  gap: 0.25rem;
}

.author-name {
  font-weight: 600;
  color: var(--vp-c-text-1);
  font-size: 1rem;
}

.author-email {
  font-size: 0.9rem;
  color: var(--vp-c-text-2);
}

.author-email a {
  color: var(--vp-c-brand-1);
  text-decoration: none;
}

.author-email a:hover {
  text-decoration: underline;
}

.author-affiliation {
  font-size: 0.9rem;
  color: var(--vp-c-text-2);
  font-style: italic;
}

.last-updated {
  margin-top: 1rem;
  padding-top: 1rem;
  border-top: 1px solid var(--vp-c-divider);
  font-size: 0.9rem;
  color: var(--vp-c-text-2);
}

@media (min-width: 640px) {
  .authors-list {
    flex-direction: row;
    flex-wrap: wrap;
    gap: 1.5rem;
  }
  
  .author {
    min-width: 250px;
  }
}
</style> 