import TripleChoice from './TripleChoice.vue'

// Live in Storybook via a stubbed backend that enforces "pick two of three" —
// the same contract the Servirtium VCR replays in the Selenium test. Check two
// and you get the pair label (Slow / Expensive / Low Quality); reach for the
// third and the backend refuses with "Impossible".
function makeStubFetch() {
  const state = { good: false, cheap: false, fast: false }
  const labelFor = (s) => {
    const n = ['good', 'cheap', 'fast'].filter((k) => s[k]).length
    if (n < 2) return 'Pick two'
    if (s.good && s.cheap) return 'Slow'
    if (s.good && s.fast) return 'Expensive'
    return 'Low Quality'
  }
  return async (_url, opts) => {
    const { item, checked } = JSON.parse(opts.body)
    const next = { ...state, [item]: checked }
    if (['good', 'cheap', 'fast'].filter((k) => next[k]).length > 2) {
      return { ok: false, status: 409, json: async () => ({ error: 'pick two of three', label: 'Impossible' }) }
    }
    Object.assign(state, next)
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
