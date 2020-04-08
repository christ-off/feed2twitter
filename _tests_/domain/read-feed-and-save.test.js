'use strict';

const tested = require('../../src/domain/read-feed-and-save');
const nock = require('nock');
const fs = require('fs');
let aws = require('../../src/providers/aws');
jest.mock('../../src/providers/aws');

describe('Test information extraction from entry', () => {

    test('Should extract expected info', async () => {
        // GIVEN
        expect.assertions(4);
        // GIVEN
        const FEED_CONTENT = fs.readFileSync('_tests_/feed.xml');
        nock("http://fake.com").get('/feed.xml').reply(200, FEED_CONTENT);
        aws.putItemPromise = jest.fn().mockImplementation(() => {
            return {
                "ConsumedCapacity": {
                    "TableName": "Feed",
                    "CapacityUnits": 1.0
                }
            }
        });
        // WHEN
        let result = await tested.readFeedAndSave('http://fake.com/feed.xml');
        // THEN
        expect(result).toBeDefined();
        expect(result).toEqual(10);
        expect(aws.putItemPromise.mock.calls.length).toBe(10);
        expect(aws.putItemPromise.mock.calls[0][0]).toEqual({
                Item: {
                    "Id": {S: "http://localhost:4000/H%C3%A9r%C3%A9sie%20min%C3%A9rale%20St%C3%A9phane%20Desienne"},
                    "title": {S: "Hérésie minérale" },
                    "writer": {S:  "Desienne, Stéphane"},
                    "date": {S: "2019-09-07T00:00:00+02:00"},
                    "tags": {S: "Nouvelle, Science-fiction, Religion"},
                    "link": {S: "http://localhost:4000/H%C3%A9r%C3%A9sie-min%C3%A9rale-St%C3%A9phane-Desienne/"},
                    "imageUrl": {S: "http://localhost:4000/2019-09-07-H%C3%A9r%C3%A9sie%20min%C3%A9rale%20St%C3%A9phane%20Desienne.jpg"}
                },
                ReturnConsumedCapacity: "TOTAL",
                TableName: 'Feed'
            }
        );
    });

});

