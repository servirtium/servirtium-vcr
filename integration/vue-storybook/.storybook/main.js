/** @type { import('@storybook/vue3-vite').StorybookConfig } */
export default {
  stories: ['../src/**/*.stories.@(js|jsx|ts|tsx)'],
  framework: { name: '@storybook/vue3-vite', options: {} },
  // The static build is published on the Jekyll site (servirtium.dev/storybook),
  // and Jekyll silently drops files whose names start with "_". Vite otherwise
  // emits a "_plugin-vue_export-helper" chunk — strip leading underscores from
  // chunk names so every asset survives the Jekyll copy.
  viteFinal: async (config) => {
    config.build = config.build || {}
    config.build.rollupOptions = config.build.rollupOptions || {}
    const output = config.build.rollupOptions.output || {}
    const strip = (info) => `assets/${(info.name || 'chunk').replace(/^_+/, '')}-[hash].js`
    config.build.rollupOptions.output = { ...output, chunkFileNames: strip }
    return config
  },
}
