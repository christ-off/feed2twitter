
const tested = require('../../src/handlers/process-atom-feed');
const dotenv = require('dotenv');
const nock = require('nock');
const fs = require('fs');

const CURRENT_FEED_LENGTH = 33436;
const FEED_FILE = '_tests_/feed.xml';

describe('Execute Lambda in Mock env', () => {
  beforeAll(() => {
    dotenv.config();

  });
  test('Get should return size of content', async () => {
    expect.assertions(1);
    // GIVEN
    let feedContent = fs.readFileSync(FEED_FILE);
    nock("http://127.0.0.1:4000").get('/feed.xml').reply(200, feedContent);
    // WHEN
    let data = await tested.processAtomFeed();
    // THEN
    expect(data).toEqual(CURRENT_FEED_LENGTH);
  });

});
