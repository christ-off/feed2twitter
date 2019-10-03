'use strict';

const aws = require('../providers/aws');
const feedItems = require('../data/feed-items');

/**
 * Returns the number of items present in
 * @return {Promise<number>}
 */
module.exports.countFeedItems = async () => {
    var params = {
        Select: 'COUNT',
        TableName: 'Feed'
    };
    let result = await aws.scanPromise(params);
    /**
     * Result will be like
     * {
     *   "Count": 0,
     *   "ScannedCount": 0,
     *   "ConsumedCapacity": null
     *   }
     *
     */
    return result.Count;
};

/**
 * Use included feed-items to save them to dynamodb
 * @return {Promise<number>}
 */
module.exports.loadEmbeddedItems = async () => {
    let total = 0;
    for (const item of feedItems) {
        console.log(`Going to putItem ${JSON.stringify(item)}`);
        var params = {
            Item: {
                "Id": { S: item.id},
                "title": {S: item.title},
                "writer": {S: item.writer},
                "date": {S: item.date},
                "tags": {S: item.tags},
                "link": {S: item.link},
                "imageUrl": {S: item.imageUrl}
            },
            ReturnConsumedCapacity: "TOTAL",
            TableName: 'Feed'
        };
        let result = await aws.putItemPromise(params);
        let count = result.ConsumedCapacity.CapacityUnits;
        total = total + count;
        console.log(`putItem result ${JSON.stringify(result)} for ${JSON.stringify(item)}`);
    }
    return total;
};


