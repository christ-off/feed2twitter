
const tested = require('../../src/handlers/process-atom-feed');

const repository = require('../../src/repository/feed-repository');
jest.mock('../../src/repository/feed-repository');

const dotenv = require('dotenv');
const nock = require('nock');

/*
const fs = require('fs');
const twitter = require('../../src/output/tweet');
jest.mock('../../src/output/tweet');

const FEED_FILE = '_tests_/feed.xml';
const NO_ENTRY_FEED_FILE = '_tests_/no_entry_feed.xml';
*/

describe('Execute Lambda in Mock env', () => {

  beforeAll(() => {
    dotenv.config({ path: '.envtest' });
  });

  beforeEach(() => {
    nock.cleanAll();
  });

  test('Should count and load', async () => {
    expect.assertions(4);
    // GIVEN
    repository.countFeedItems = jest.fn();
    repository.countFeedItems
        .mockReturnValueOnce(0)
        .mockReturnValueOnce(320);
    repository.loadEmbeddedItems = jest.fn().mockImplementation(() => { return 320 } );
    // WHEN
    let result = await tested.processAtomFeed();
    // THEN
    expect(result).toBeDefined();
    expect(result).toBe(320);
    expect(repository.countFeedItems.mock.calls.length).toBe(2);
    expect(repository.loadEmbeddedItems.mock.calls.length).toBe(1);
  });

  test('Should count only if enough', async () => {
    expect.assertions(4);
    // GIVEN
    repository.countFeedItems = jest.fn();
    repository.countFeedItems.mockReturnValue(320);
    repository.loadEmbeddedItems = jest.fn();
    // WHEN
    let result = await tested.processAtomFeed();
    // THEN
    expect(result).toBeDefined();
    expect(result).toBe(320);
    expect(repository.countFeedItems.mock.calls.length).toBe(1);
    expect(repository.loadEmbeddedItems.mock.calls.length).toBe(0);
  });


  /*
  test('Get should abort on entry-less feed', async () => {
    expect.assertions(1);
    // GIVEN
    let feedContent = fs.readFileSync(NO_ENTRY_FEED_FILE);
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
    twitter.post = jest.fn().mockImplementation(() => { return 'COUCOU' } );
    // WHEN
    let data = await tested.processAtomFeed();
    // THEN
    expect(data).toEqual('COUCOU');
  });
   */

});
