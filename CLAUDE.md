# js-webserver-sample

A minimal sample Express web server for Node.js.

## Project structure

- `src/server.js` — Express app; exports `app` for testing, starts server when run directly
- `test/server.test.js` — Jest + Supertest integration tests
- `package.json` — dependencies and scripts
- `Dockerfile` — builds a container image using `ghcr.io/patrickbaldridge/node25:latest`
- `.github/workflows/ci.yml` — CI/CD pipeline

## Commands

- `npm start` — start the server (default port 3000, overridden by `PORT` env var)
- `npm test` — run Jest tests

## Conventions

- CommonJS (`require`/`module.exports`), not ESM
- Express 4.x
- Keep `app` exported separately from server startup so tests can import it cleanly
- Tests live in `test/`, mirroring the structure of `src/`

## Docker

- Base image: `ghcr.io/patrickbaldridge/node25:latest`
- Production deps only (`npm ci --omit=dev`)
- Exposes port 3000

## CI/CD

Three jobs in `.github/workflows/ci.yml`:

- `test` — runs unit tests inside the `node25` container (PRs and main)
- `build` — builds Docker image and smoke tests it (PRs only)
- `publish` — builds Docker image, smoke tests it, and publishes to `ghcr.io/patrickbaldridge/js-webserver-sample:latest` (main only)

The `publish` job builds and tests the image itself before pushing — it does not reuse an artifact from `build`.

## Notes

- This is a sample/demo project — keep changes minimal and focused
- No linting or TypeScript configured; don't add tooling unless asked
