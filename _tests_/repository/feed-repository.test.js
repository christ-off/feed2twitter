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
        expect(result).toEqual(406);
        expect(aws.putItemPromise.mock.calls.length).toBe(406);
        expect(aws.putItemPromise.mock.calls[0][0]).toEqual({
                Item: {
                    "Id": {S: "https://post-tenebras-lire.net/tracts-34-zemmour-contre-histoire" },
                    "title": {S: "Tracts, n°34 : Zemmour contre l’histoire" },
                    "writer": {S: "Revue Tracts" },
                    "date": {S: "2022-02-15T00:00:00+00:00" },
                    "tags": {S: "Histoire,Politique,eBook Sans DRM" },
                    "link": {S: "https://post-tenebras-lire.net/tracts-34-zemmour-contre-histoire/" }
                },
                ReturnConsumedCapacity: "TOTAL",
                TableName: 'Feed'
            }
        );
    });

    test('Should pick random Id', async () => {
        expect.assertions(4);
        // GIVEN
        aws.scanPromise = jest.fn().mockImplementation(() => {
            return {
                "Items": [
                    {
                        "Id": {
                            "S": "https://post-tenebras-lire.net/fake-same-url"
                        }
                    },
                    {
                        "Id": {
                            "S": "https://post-tenebras-lire.net/fake-same-url"
                        }
                    },
                    {
                        "Id": {
                            "S": "https://post-tenebras-lire.net/fake-same-url"
                        }
                    }
                ],
                "Count": 3,
                "ScannedCount": 3,
                "ConsumedCapacity": null
            }
        });
        // WHEN
        let result = await tested.getRandomItemId();
        // THEN
        expect(result).toBeDefined();
        expect(result).toEqual("https://post-tenebras-lire.net/fake-same-url");
        expect(aws.scanPromise.mock.calls.length).toBe(1);
        expect(aws.scanPromise.mock.calls[0][0]).toEqual({
                TableName: "Feed",
                ProjectionExpression: "Id"
            }
        );
    });

    test('Should read an Item', async () => {
        expect.assertions(4);
        // GIVEN
        aws.queryPromise = jest.fn().mockImplementation(() => {
            return {
                "Items": [
                    {
                        "date": {
                            "S": "2017-01-04T00:00:00+01:00"
                        },
                        "imageUrl": {
                            "S": "https://post-tenebras-lire.net/assets/posts/2017-01-04-lecture-bad-science-de-ben-goldacre.webp"
                        },
                        "writer": {
                            "S": "Goldacre, Ben"
                        },
                        "link": {
                            "S": "https://post-tenebras-lire.net/lecture-bad-science-de-ben-goldacre/"
                        },
                        "Id": {
                            "S": "https://post-tenebras-lire.net/lecture-bad-science-de-ben-goldacre"
                        },
                        "tags": {
                            "S": "Science"
                        },
                        "title": {
                            "S": "Bad Science"
                        }
                    }
                ],
                "Count": 1,
                "ScannedCount": 1,
                "ConsumedCapacity": null
            }
        });
        // WHEN
        let result = await tested.getItem('https://post-tenebras-lire.net/lecture-bad-science-de-ben-goldacre');
        // THEN
        expect(result).toBeDefined();
        expect(result).toEqual(
            {
                date: "2017-01-04T00:00:00+01:00",
                writer: "Goldacre, Ben",
                link: "https://post-tenebras-lire.net/lecture-bad-science-de-ben-goldacre/",
                Id: "https://post-tenebras-lire.net/lecture-bad-science-de-ben-goldacre",
                tags: "Science",
                title: "Bad Science"
            }
        );
        expect(aws.queryPromise.mock.calls.length).toBe(1);
        expect(aws.queryPromise.mock.calls[0][0]).toEqual(
            {
                "ExpressionAttributeValues": {
                    ":v1": {
                        "S": "https://post-tenebras-lire.net/lecture-bad-science-de-ben-goldacre"
                    }
                },
                "KeyConditionExpression": "Id = :v1",
                "TableName": "Feed"
            }
        );
    });
});