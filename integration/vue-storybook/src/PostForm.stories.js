import PostForm from './PostForm.vue'

// The control "as presented on Storybook". A decorator stubs `fetch` with the
// same response shape the Servirtium VCR replays in the Selenium test, so the
// component is live inside Storybook too — same control, same backend contract.
export default {
  title: 'Servirtium/PostForm',
  component: PostForm,
  decorators: [
    () => ({
      template: '<story />',
      created() {
        window.fetch = async (_url, opts) => {
          const { message } = JSON.parse(opts?.body || '{}')
          return {
            ok: true,
            status: 200,
            json: async () => ({ id: 1, message, status: 'created' }),
          }
        }
      },
    }),
  ],
}

export const Default = { args: {} }
