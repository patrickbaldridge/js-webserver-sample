# js-webserver-sample

A minimal sample Express web server for Node.js.

## Project structure

- `src/server.js` — Express app; exports `app` for testing, starts server when run directly
- `test/server.test.js` — Jest + Supertest integration tests
- `package.json` — dependencies and scripts

## Commands

- `npm start` — start the server (default port 3000, overridden by `PORT` env var)
- `npm test` — run Jest tests

## Conventions

- CommonJS (`require`/`module.exports`), not ESM
- Express 4.x
- Keep `app` exported separately from server startup so tests can import it cleanly
- Tests live in `test/`, mirroring the structure of `src/`

## Notes

- This is a sample/demo project — keep changes minimal and focused
- No linting or TypeScript configured; don't add tooling unless asked
