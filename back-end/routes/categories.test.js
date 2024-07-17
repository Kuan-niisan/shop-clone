const request = require('supertest');
const api = require('../index');
const db = require('../db/index');
jest.mock('../db/index');

test('GET /categories returns a 200 status code', async () => {
   const res = await request(api).get('/categories');
   expect(res.statusCode).toBe(200);
});
test('GET /categories returns a JSON response', async () => {
  const res = await request(api).get('/categories');
  expect(res.type).toBe('application/json');
});
test('GET /categories returns an array of category objects', async () => {
  const res = await request(api).get('/categories');
  expect(res.text).toBe('[{},{},{}]');
});

afterAll(() => {
  api.server.close();
});
