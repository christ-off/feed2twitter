'use strict';

const tested = require('../../src/repository/feed-repository');
const aws = require('../../src/providers/aws');
jest.mock('../../src/providers/aws');

describe('Test all feature of Feed repository', () => {

    test('Should count items', async () => {
        expect.assertions(4);
        // GIVEN
        aws.scanPromise = jest.fn().mockImplementation(() => {
            return {
                "Count": 42,
                "ScannedCount": 0,
                "ConsumedCapacity": null
            }
        });
        // WHEN
        let result = await tested.countFeedItems();
        // THEN
        expect(result).toBeDefined();
        expect(result).toEqual(42);
        expect(aws.scanPromise.mock.calls.length).toBe(1);
        expect(aws.scanPromise.mock.calls[0][0]).toEqual(
            {
                Select: 'COUNT',
                TableName: "Feed"
            }
        );
    });

    test('Should load items', async () => {
        expect.assertions(4);
        // GIVEN
        aws.putItemPromise = jest.fn().mockImplementation(() => {
            return {
                "ConsumedCapacity": {
                    "TableName": "Feed",
                    "CapacityUnits": 1.0
                }
            }
        });
        // WHEN
        let result = await tested.loadEmbeddedItems();
        // THEN
        expect(result).toBeDefined();
        expect(result).toEqual(320);
        expect(aws.putItemPromise.mock.calls.length).toBe(320);
        expect(aws.putItemPromise.mock.calls[0][0]).toEqual({
                Item: {
                    "Id": {S: "https://post-tenebras-lire.net/Gunpowder-Moon-David-Pedreira"},
                    "title": {S: "Gunpowder Moon"},
                    "writer": {S: "Pedreira, David"},
                    "date": {S: "2019-09-29T00:00:00+02:00"},
                    "tags": {S: "Science-Fiction"},
                    "link": {S: "https://post-tenebras-lire.net/Gunpowder-Moon-David-Pedreira/"},
                    "imageUrl": {S: "https://post-tenebras-lire.net/assets/posts/2019-09-29-Gunpowder-Moon-David-Pedreira.jpg"}
                },
                ReturnConsumedCapacity: "TOTAL",
                TableName: 'Feed'
            }
        );
    });
});