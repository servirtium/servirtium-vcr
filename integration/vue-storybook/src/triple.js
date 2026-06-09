// Standalone entry for the Good/Cheap/Fast control — the page the Selenium
// harness opens, served same-origin by the Servirtium VCR.
import { createApp } from 'vue'
import TripleChoice from './TripleChoice.vue'

createApp(TripleChoice).mount('#app')
