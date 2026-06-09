/** @type { import('@storybook/vue3-vite').Preview } */
export default {
  parameters: {
    controls: { matchers: { color: /(background|color)$/i, date: /Date$/i } },
  },
}
