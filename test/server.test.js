const request = require('supertest');
const app = require('../src/server');

describe('GET /', () => {
  it('should return 200', async () => {
    const res = await request(app).get('/');
    expect(res.status).toBe(200);
  });
});
