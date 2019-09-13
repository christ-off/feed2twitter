/**
 * Http mocking done thanks to :
 * https://scotch.io/tutorials/nodejs-tests-mocking-http-requests
 */

const tested = require('../../src/input/get-content');
const nock = require('nock');
const dotenv = require('dotenv');

const EXPECTED_RESPONSE = "this is the expected response";

describe('Testing getting feed with HTTP ', () => {

  beforeAll(() => {
    dotenv.config({ path: '.envtest' });
  });

  test('Get should return the expected content', async () => {
    expect.assertions(2);
    // GIVEN
    nock("http://perdu.com").get('/').reply(200, EXPECTED_RESPONSE);
    // WHEN
    let data = await tested.getContent("http://perdu.com", "/");
    // THEN
    expect(data).toBeDefined();
    expect(data).toBe(EXPECTED_RESPONSE);
  });

  test('should return null on not found request', async () => {
    expect.assertions(1);
    // GIVEN
    nock("http://perdu.com").get('/').reply(404, null);
    // WHEN
    let data = await tested.getContent("http://perdu.com","/");
    // THEN
    expect(data).toBeNull();
  });

});

