<script setup>
import { ref } from 'vue'

// Where the form POSTs. Relative by default, so when the page is served
// same-origin by the Servirtium VCR the request goes straight to the VCR
// (no CORS, no preflight). Overridable for Storybook / other hosts.
const props = defineProps({
  endpoint: { type: String, default: '/api/messages' },
})

const message = ref('')
const result = ref(null)
const error = ref(null)
const pending = ref(false)

async function submit() {
  error.value = null
  result.value = null
  pending.value = true
  try {
    const res = await fetch(props.endpoint, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ message: message.value }),
    })
    if (!res.ok) throw new Error(`HTTP ${res.status}`)
    result.value = await res.json()
  } catch (e) {
    error.value = String(e)
  } finally {
    pending.value = false
  }
}
</script>

<template>
  <div class="post-form">
    <h2>Leave a message</h2>
    <form @submit.prevent="submit">
      <input
        v-model="message"
        data-testid="message-input"
        placeholder="Your message"
        aria-label="message"
      />
      <button type="submit" data-testid="submit" :disabled="pending">
        {{ pending ? 'Posting…' : 'Post' }}
      </button>
    </form>

    <p v-if="result" data-testid="result" class="ok">
      Created #{{ result.id }}: “{{ result.message }}” ({{ result.status }})
    </p>
    <p v-if="error" data-testid="error" class="err">{{ error }}</p>
  </div>
</template>

<style scoped>
.post-form { font-family: system-ui, sans-serif; max-width: 28rem; }
input { padding: 0.4rem 0.6rem; margin-right: 0.5rem; min-width: 14rem; }
button { padding: 0.4rem 0.9rem; }
.ok { color: #1a7f37; }
.err { color: #cf222e; }
</style>
