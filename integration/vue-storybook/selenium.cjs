// Shared Selenium driver for the Vue POST demo. Opens the built Vue page
// (served same-origin by the Servirtium VCR at /app), types a message, submits
// (which fires the POST the VCR mocks/replays), and reads the rendered result.
const path = require('path')
const { Builder, By, until } = require('selenium-webdriver')
const chrome = require('selenium-webdriver/chrome')

const HERE = __dirname
const DIST = path.join(HERE, 'dist')
const TAPE = path.join(HERE, 'tapes', 'post.md')
// The compiled JS binding (../../javascript/dist/index.js relative to here).
const VCR_DIST = path.resolve(HERE, '..', '..', 'javascript', 'dist', 'index.js')

// Fixed so record and playback exercise the same request (Servirtium can then
// match the recorded interaction exactly).
const MESSAGE = 'hello from servirtium'

async function driveForm(vcrBaseUrl, timeoutMs = 60000) {
  const url = `${vcrBaseUrl}/app/index.html`
  const opts = new chrome.Options()
  for (const a of ['--headless=new', '--no-sandbox', '--disable-dev-shm-usage', '--disable-gpu']) {
    opts.addArguments(a)
  }
  const driver = await new Builder().forBrowser('chrome').setChromeOptions(opts).build()
  try {
    await driver.get(url)
    const input = await driver.wait(
      until.elementLocated(By.css('[data-testid="message-input"]')), timeoutMs)
    await input.clear()
    await input.sendKeys(MESSAGE)
    await driver.findElement(By.css('[data-testid="submit"]')).click()
    const result = await driver.wait(
      until.elementLocated(By.css('[data-testid="result"]')), timeoutMs)
    await driver.wait(until.elementTextContains(result, 'Created'), timeoutMs)
    return await result.getText()
  } finally {
    await driver.quit()
  }
}

// ---- Good/Cheap/Fast control --------------------------------------------

const path2 = require('path')
const TAPES_DIR = path2.join(HERE, 'tapes')

// Each scenario is an ordered sequence of toggles (playback is cursor-ordered)
// plus the state the control should end in. `allowed` says whether the backend
// accepts that toggle — the third in block-third is refused ("Impossible").
const TRIPLE_SCENARIOS = [
  {
    name: 'pick-two',
    tape: path2.join(TAPES_DIR, 'triple-pick-two.md'),
    steps: [
      { item: 'good', allowed: true },
      { item: 'fast', allowed: true },
    ],
    expect: { good: true, cheap: false, fast: true, status: 'Expensive' },
  },
  {
    name: 'block-third',
    tape: path2.join(TAPES_DIR, 'triple-block-third.md'),
    steps: [
      { item: 'good', allowed: true },
      { item: 'cheap', allowed: true },
      { item: 'fast', allowed: false }, // the centre of the Venn — Impossible
    ],
    expect: { good: true, cheap: true, fast: false, status: 'Impossible' },
  },
]

// Open the Good/Cheap/Fast page and apply `steps` in order, synchronising on
// each toggle's outcome. Returns the control's final observed state.
async function driveTriple(vcrBaseUrl, steps, timeoutMs = 60000) {
  const url = `${vcrBaseUrl}/app/triple.html`
  const opts = new chrome.Options()
  for (const a of ['--headless=new', '--no-sandbox', '--disable-dev-shm-usage', '--disable-gpu']) {
    opts.addArguments(a)
  }
  const driver = await new Builder().forBrowser('chrome').setChromeOptions(opts).build()
  const box = (item) => driver.findElement(By.css(`[data-testid="check-${item}"]`))
  try {
    await driver.get(url)
    await driver.wait(until.elementLocated(By.css('[data-testid="check-good"]')), timeoutMs)
    for (const step of steps) {
      await box(step.item).click()
      if (step.allowed) {
        await driver.wait(async () => box(step.item).isSelected(), timeoutMs)
      } else {
        await driver.wait(
          until.elementTextContains(driver.findElement(By.css('[data-testid="status"]')), 'Impossible'),
          timeoutMs)
      }
    }
    return {
      good: await box('good').isSelected(),
      cheap: await box('cheap').isSelected(),
      fast: await box('fast').isSelected(),
      status: await driver.findElement(By.css('[data-testid="status"]')).getText(),
    }
  } finally {
    await driver.quit()
  }
}

module.exports = {
  HERE, DIST, TAPE, VCR_DIST, MESSAGE, driveForm,
  TAPES_DIR, TRIPLE_SCENARIOS, driveTriple,
}
