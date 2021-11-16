/**
 * Http mocking done thanks to :
 * https://scotch.io/tutorials/nodejs-tests-mocking-http-requests
 */

const tested = require('../../src/input/get-content');
const nock = require('nock');
const fs = require('fs');

const EXPECTED_RESPONSE = "this is the expected response";

describe('Testing getting feed with HTTP ', () => {

  test('Get should return the expected text content', async () => {
    expect.assertions(2);
    // GIVEN
    nock("http://perdu.com").get('/').reply(200, EXPECTED_RESPONSE);
    // WHEN
    let data = await tested.getContent("http://perdu.com", "/");
    // THEN
    expect(data).toBeDefined();
    expect(data).toBe(EXPECTED_RESPONSE);
  });

  test('Get should return the expected Buffer for binary', async () => {
    expect.assertions(2);
    // GIVEN
    let imageContent = fs.readFileSync('_tests_/test_image.webp');
    nock("http://perdu.com").get('/').reply(200, imageContent);
    // WHEN
    let data = await tested.getBinaryContent("http://perdu.com", "/");
    // THEN![](../test_image.webp)
    expect(data).toBeDefined();
    expect(data instanceof Buffer).toBeTruthy();
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

