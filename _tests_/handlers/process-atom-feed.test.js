
const tested = require('../../src/handlers/process-atom-feed');

const repository = require('../../src/repository/feed-repository');
jest.mock('../../src/repository/feed-repository');

const twitter = require('../../src/output/tweet');
jest.mock('../../src/output/tweet');

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
    expect.assertions(7);
    // GIVEN
    repository.countFeedItems = jest.fn();
    repository.countFeedItems
        .mockReturnValueOnce(0)
        .mockReturnValueOnce(293);
    repository.loadEmbeddedItems = jest.fn().mockImplementation(() => { return 293 } );
    repository.getRandomItemId =  jest.fn().mockImplementation(() => { return 42 } );
    repository.getItem = jest.fn().mockImplementation(() => {
      return { item : "returned" };
    } );
    twitter.post = jest.fn().mockImplementation(() => {
      return { item : "twitter" };
    } );
    // WHEN
    let result = await tested.processAtomFeed();
    // THEN
    expect(result).toBeDefined();
    expect(result).toEqual({ item : "twitter" });
    expect(repository.countFeedItems.mock.calls.length).toBe(2);
    expect(repository.loadEmbeddedItems.mock.calls.length).toBe(1);
    expect(repository.getRandomItemId.mock.calls.length).toBe(1);
    expect(repository.getItem.mock.calls.length).toBe(1);
    expect(twitter.post.mock.calls.length).toBe(1);
  });

  test('Should count only if enough', async () => {
    expect.assertions(7);
    // GIVEN
    repository.countFeedItems = jest.fn();
    repository.countFeedItems.mockReturnValue(293);
    repository.loadEmbeddedItems = jest.fn();
    repository.getRandomItemId =  jest.fn().mockImplementation(() => { return 42 } );
    repository.getItem = jest.fn().mockImplementation(() => {
      return { item : "returned" };
    } );
    twitter.post = jest.fn().mockImplementation(() => {
      return { item : "twitter" };
    } );
    // WHEN
    let result = await tested.processAtomFeed();
    // THEN
    expect(result).toBeDefined();
    expect(result).toEqual({ item : "twitter" });
    expect(repository.countFeedItems.mock.calls.length).toBe(1);
    expect(repository.loadEmbeddedItems.mock.calls.length).toBe(0);
    expect(repository.getRandomItemId.mock.calls.length).toBe(1);
    expect(repository.getItem.mock.calls.length).toBe(1);
    expect(twitter.post.mock.calls.length).toBe(1);
  });

});
