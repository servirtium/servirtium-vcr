<script setup>
import { reactive, ref } from 'vue'

// Good / Cheap / Fast — pick any two. A checkbox per circle. Every toggle is a
// POST to the backend, and the UI renders the SERVER's answer (no optimistic
// flip): the backend is the source of truth for "pick two", returning the pair
// label (Slow / Expensive / Low Quality) — or refusing the third with a 409
// whose label is "Impossible" (the centre of the Venn).
const props = defineProps({
  endpoint: { type: String, default: '/api/selection' },
})

const sel = reactive({ good: false, cheap: false, fast: false })
const label = ref('Pick two')
const refused = ref('')

async function toggle(item) {
  const checked = !sel[item]
  const res = await fetch(props.endpoint, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ item, checked }),
  })
  const data = await res.json()
  if (!res.ok) {
    // server refused (would be all three) — leave selection untouched
    refused.value = data.error || 'refused'
    return
  }
  refused.value = ''
  sel.good = data.good
  sel.cheap = data.cheap
  sel.fast = data.fast
  label.value = data.label
}
</script>

<template>
  <div class="triple">
    <svg viewBox="0 0 440 400" width="440" role="img" aria-label="Good Cheap Fast — pick two">
      <circle cx="220" cy="135" r="115" fill="#2b7fff" fill-opacity="0.55" />
      <circle cx="150" cy="258" r="115" fill="#2ecc55" fill-opacity="0.55" />
      <circle cx="290" cy="258" r="115" fill="#ff5544" fill-opacity="0.55" />

      <text x="220" y="80" class="lbl">Good</text>
      <text x="92" y="300" class="lbl">Cheap</text>
      <text x="348" y="300" class="lbl">Fast</text>

      <text x="158" y="205" class="ov">Slow</text>
      <text x="282" y="205" class="ov">Expensive</text>
      <text x="220" y="320" class="ov">Low Quality</text>
      <text x="220" y="250" class="ov imp">Impossible</text>

      <!-- a real checkbox per circle, in each circle's own area -->
      <foreignObject x="200" y="92" width="40" height="40">
        <input type="checkbox" data-testid="check-good"
               :checked="sel.good" @click.prevent="toggle('good')" />
      </foreignObject>
      <foreignObject x="118" y="312" width="40" height="40">
        <input type="checkbox" data-testid="check-cheap"
               :checked="sel.cheap" @click.prevent="toggle('cheap')" />
      </foreignObject>
      <foreignObject x="322" y="312" width="40" height="40">
        <input type="checkbox" data-testid="check-fast"
               :checked="sel.fast" @click.prevent="toggle('fast')" />
      </foreignObject>
    </svg>

    <p v-if="refused" data-testid="status" class="impossible">✗ Impossible — {{ refused }}</p>
    <p v-else data-testid="status" class="ok">{{ label }}</p>
  </div>
</template>

<style scoped>
.triple { font-family: system-ui, sans-serif; max-width: 30rem; }
svg { max-width: 100%; height: auto; }
.lbl { font: 700 24px system-ui, sans-serif; fill: #fff; text-anchor: middle; }
.ov  { font: 600 15px system-ui, sans-serif; fill: #1f2328; text-anchor: middle; }
.ov.imp { font-weight: 700; }
/* A native checkbox glyph does not reliably paint inside an SVG <foreignObject>
   (the .checked property is set — Selenium's isSelected() sees it — but the tick
   may not render). Draw the box and check ourselves so the checked state is
   always visible; it stays a real <input> so .isSelected() still works. */
input[type="checkbox"] {
  appearance: none; -webkit-appearance: none; -moz-appearance: none;
  width: 26px; height: 26px; margin: 0; box-sizing: border-box;
  border: 3px solid #1f2328; border-radius: 5px; background: #fff; cursor: pointer;
}
input[type="checkbox"]:checked { background: #1a7f37; border-color: #1a7f37; }
input[type="checkbox"]:checked::after {
  content: ""; display: block; width: 6px; height: 12px; margin: 2px auto 0;
  border: solid #fff; border-width: 0 3px 3px 0; transform: rotate(45deg);
}
.impossible { color: #cf222e; font-weight: 600; }
.ok { color: #1a7f37; font-weight: 600; }
</style>
