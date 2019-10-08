'use strict';

const getter = require('../input/get-content');
const xml2js = require('xml2js');
const entriesextractor = require('./extract-entries');
const entryconvertor = require('./feed-entry-to-dynamodb');
const aws = require('../../src/providers/aws');

/**
 * Reads the feed content and save it to DynamoDb
 * @param feedUrl
 * @return {Promise<number>}
 */
module.exports.readFeedAndSave = async (feedUrl) => {
    let feedContent = await getter.getContent(feedUrl, null);
    if (!feedContent){
        console.warn(`Not content from ${feedUrl}`);
        return 0;
    }
    let xml = await xml2js.parseStringPromise(feedContent);
    let entries = entriesextractor.extractEntries(xml);
    let total = 0;
    for (const entry of entries) {
        const dynamoDbItem = entryconvertor.feedEntryToDynamoDb(entry);
        let result = await aws.putItemPromise(dynamoDbItem);
        let count = result.ConsumedCapacity.CapacityUnits;
        total = total + count;
        console.log(`putItem result ${JSON.stringify(result)} for ${JSON.stringify(entry)}`);
    }
    return total;
}