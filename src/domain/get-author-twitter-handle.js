'use strict';

const aws = require('../providers/aws');

/**
 * Return the twitter handle from DynamoDB
 * @param authorname
 * @return string
 */
exports.getAuthorTwitterHandle = async (authorname) => {
    var params = {
        ExpressionAttributeValues: {
            ":v1": {
                S: authorname
            }
        },
        KeyConditionExpression: "Author = :v1",
        ProjectionExpression: "twitterHandle",
        TableName: "Authors"
    };
    let result = await aws.queryPromise(params);
    if (result) {
        console.log(`Twitter handle ${result} found for ${authorname}`);
        return result;
    } else {
        console.log('Twitter handle not found for ' + authorname);
        return authorname;
    }
};