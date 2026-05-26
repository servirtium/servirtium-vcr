/** @type {import('ts-jest').JestConfigWithTsJest} */
module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'node',
  transform: {
    '^.+\\.tsx?$': ['ts-jest', { tsconfig: 'tsconfig.test.json' }],
  },
  // The Aether VCR core is one-active-server-per-process (its tape / cursor /
  // mutation state is process-global). Jest runs test FILES in parallel worker
  // processes — each worker loads its own copy of the .so, so files are
  // isolated — but to stay deterministic we also pin to a single worker.
  maxWorkers: 1,
  testMatch: ['**/src/**/*.test.ts'],
  modulePathIgnorePatterns: ['<rootDir>/dist'],
}
