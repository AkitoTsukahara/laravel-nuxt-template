<template>
  <div class="container">
    <div>
      <Logo />
      <h1 class="title">
        {{ greet }}
      </h1>
      <div class="links">
        <a
            href="https://nuxtjs.org/"
            target="_blank"
            rel="noopener noreferrer"
            class="button--green"
        >
          Documentation
        </a>
        <a
            href="https://github.com/nuxt/nuxt.js"
            target="_blank"
            rel="noopener noreferrer"
            class="button--grey"
        >
          GitHub
        </a>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  async asyncData({ app }): Promise<object> {
    const greet: string = await app.$axios.$get('/').catch((err: any) => err)
    return { greet }
  }
})
</script>
