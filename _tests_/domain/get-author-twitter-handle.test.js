'use strict';

const tested = require('../../src/domain/get-author-twitter-handle');
const aws = require('../../src/providers/aws');
jest.mock('../../src/providers/aws');

describe('Test Get Author Twitter handle', () => {

    test('Should call AWS', async () => {
        expect.assertions(4);
        // GIVEN
        aws.queryPromise = jest.fn().mockImplementation(() => {
            return {
                "Items": [
                    {
                        "twitterHandle": {
                            "S": "@DesienneAuteur"
                        }
                    }
                ],
                "Count": 1,
                "ScannedCount": 1,
                "ConsumedCapacity": null
            }
        });
        // WHEN
        let result = await tested.getAuthorTwitterHandle('Desienne, Stéphane');
        // THEN
        expect(result).toBeDefined();
        expect(result).toEqual('@DesienneAuteur');
        expect(aws.queryPromise.mock.calls.length).toBe(1);
        expect(aws.queryPromise.mock.calls[0][0]).toEqual(
            {
                KeyConditionExpression: 'Author = :v1',
                ExpressionAttributeValues: `{ ":v1": {"S": "Desienne, Stéphane"}}`,
                ProjectionExpression: "twitterHandle",
                TableName: "Authors"
            }
        );
    });

});

