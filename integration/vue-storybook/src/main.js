// Standalone entry: mounts the same PostForm control that Storybook shows.
// This is the page the Selenium test opens — served same-origin by the
// Servirtium VCR, so its POST is mocked/replayed by the VCR.
import { createApp } from 'vue'
import PostForm from './PostForm.vue'

createApp(PostForm).mount('#app')
