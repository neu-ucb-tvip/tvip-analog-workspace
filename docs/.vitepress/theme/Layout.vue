<template>
  <Layout>
    <template #doc-after>
      <AuthorInfo />
    </template>
  </Layout>
</template>

<script setup>
import DefaultTheme from 'vitepress/theme'
import AuthorInfo from './AuthorInfo.vue'

const { Layout } = DefaultTheme
</script> 