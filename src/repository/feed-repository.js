"use strict";

const aws = require("../providers/aws");
const feedItems = require("../data/feed-items");

const FEED_TABLE_NAME = "Feed";

/**
 * Returns the number of items present in
 * @return {Promise<number>}
 */
module.exports.countFeedItems = async () => {
  var params = {
    Select: "COUNT",
    TableName: FEED_TABLE_NAME
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
        Id: { S: item.id },
        title: { S: item.title },
        writer: { S: item.writer },
        date: { S: item.date },
        tags: { S: item.tags },
        link: { S: item.link },
      },
      ReturnConsumedCapacity: "TOTAL",
      TableName: FEED_TABLE_NAME
    };
    let result = await aws.putItemPromise(params);
    let count = result.ConsumedCapacity.CapacityUnits;
    total = total + count;
    console.log(
      `putItem result ${JSON.stringify(result)} for ${JSON.stringify(item)}`
    );
  }
  return total;
};

/**
 * Naive way to select a random itemId
 * Scan all ids
 * Pick one
 * Not efficient
 * @return {Promise<string>}
 */
module.exports.getRandomItemId = async () => {
  var params = {
    TableName: FEED_TABLE_NAME,
    ProjectionExpression: "Id"
  };
  let result = await aws.scanPromise(params);
  let nbResults = result.Count;
  let random = Math.floor(Math.random() * Math.floor(nbResults));
  return result.Items[random].Id.S;
};

module.exports.getItem = async Id => {
  var params = {
    KeyConditionExpression: "Id = :v1",
    ExpressionAttributeValues: {
      ":v1": { S: Id }
    },
    TableName: FEED_TABLE_NAME
  };
  console.log(`Going to query ${JSON.stringify(params)}`);
  let result = await aws.queryPromise(params);
  if (result) {
    if (result.Count != 1) {
      console.warn(`Result replied not 1 result but ${result.count} for ${Id}`);
      return null;
    } else {
      return {
        date: result.Items[0].date.S,
        writer: result.Items[0].writer.S,
        link: result.Items[0].link.S,
        Id: result.Items[0].Id.S,
        tags: result.Items[0].tags.S,
        title: result.Items[0].title.S
      };
    }
  } else {
    console.warn(`Record Not found not found for ${Id}`);
    return null;
  }
};
