
const tested = require('../../src/handlers/process-atom-feed');
const dotenv = require('dotenv');
const nock = require('nock');
const fs = require('fs');
let twitter = require('../../src/output/tweet');
jest.mock('../../src/output/tweet');


const CURRENT_FEED_LENGTH = 33436;
const FEED_FILE = '_tests_/feed.xml';
const NO_NETRY_FEED_FILE = '_tests_/no_entry_feed.xml';

describe('Execute Lambda in Mock env', () => {

  beforeAll(() => {
    dotenv.config({ path: '.envtest' });
    twitter.config();
  });

  beforeEach(() => {
    nock.cleanAll();
  });

  test('Get should abort on entry-less feed', async () => {
    expect.assertions(1);
    // GIVEN
    let feedContent = fs.readFileSync(NO_NETRY_FEED_FILE);
    nock("http://127.0.0.1:4000").get('/feed.xml').reply(200, feedContent);
    // WHEN
    let data = await tested.processAtomFeed();
    // THEN
    expect(data).toEqual({"body": "Feed is empty or as no entry", "statusCode": 400});
  });

  test('Get should return mock tweet result', async () => {
    expect.assertions(1);
    // GIVEN
    let feedContent = fs.readFileSync(FEED_FILE);
    nock("http://127.0.0.1:4000").get('/feed.xml').reply(200, feedContent);
    twitter.tweet = jest.fn().mockImplementation(() => { return 'COUCOU' } );
    // WHEN
    let data = await tested.processAtomFeed();
    // THEN
    expect(data).toEqual('COUCOU');
  });

});
