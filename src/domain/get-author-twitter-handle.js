"use strict";

const aws = require("../providers/aws");

/**
 * Return the twitter handle from DynamoDB
 * @param authorname
 * @return string
 */
exports.getAuthorTwitterHandle = async authorname => {
  var params = {
    KeyConditionExpression: "Author = :v1",
    ExpressionAttributeValues: {
      ":v1": { S: authorname }
    },
    ProjectionExpression: "twitterHandle",
    TableName: "Authors"
  };
  console.log(`Going to query ${JSON.stringify(params)}`);
  let result = await aws.queryPromise(params);
  if (result) {
    if (result.Count != 1) {
      console.warn(
        `Result replied not 1 result but ${result.count} for ${authorname}`
      );
      return authorname;
    } else {
      console.log(
        `Twitter handle ${JSON.stringify(result)} found for ${authorname}`
      );
      return result.Items[0].twitterHandle.S;
    }
  } else {
    console.log(`Twitter handle not found for ${authorname}`);
    return authorname;
  }
};
