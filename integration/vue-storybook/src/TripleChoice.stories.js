import TripleChoice from './TripleChoice.vue'

// Live in Storybook via a stubbed backend that enforces "pick two of three" —
// the same contract the Servirtium VCR replays in the Selenium test. Check two
// and you get the pair label (Slow / Expensive / Low Quality); reach for a
// third and the backend EVICTS the oldest of the two — you watch a box pop off.
// That is the joke: you can keep toggling forever and never hold all three.
function makeStubFetch() {
  const state = { good: false, cheap: false, fast: false }
  const order = []
  const labelFor = (s) => {
    const n = ['good', 'cheap', 'fast'].filter((k) => s[k]).length
    if (n < 2) return 'Pick two'
    if (s.good && s.cheap) return 'Slow'
    if (s.good && s.fast) return 'Expensive'
    return 'Low Quality'
  }
  return async (_url, opts) => {
    const { item, checked } = JSON.parse(opts.body)
    if (checked) {
      state[item] = true
      order.push(item)
      while (order.length > 2) state[order.shift()] = false // evict the oldest
    } else {
      state[item] = false
      const i = order.indexOf(item)
      if (i >= 0) order.splice(i, 1)
    }
    return { ok: true, status: 200, json: async () => ({ ...state, label: labelFor(state) }) }
  }
}

export default {
  title: 'Servirtium/GoodCheapFast',
  component: TripleChoice,
  decorators: [
    () => ({ template: '<story />', created() { window.fetch = makeStubFetch() } }),
  ],
}

export const Default = { args: {} }
