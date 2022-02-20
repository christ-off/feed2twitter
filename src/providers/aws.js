"use strict";

/**
 * This module is made to provide AWS components
 * It hides their construction
 */

const AWS = require("aws-sdk/index");

exports.dynamoDb = new AWS.DynamoDB();

/**
 * Export AWS query promise to mock it easily
 * @param params
 * @returns {Request<DocumentClient.ScanOutput, AWSError>}
 */
exports.queryPromise = async params => {
  return exports.dynamoDb.query(params).promise();
};

/**
 * Export AWS put promise to mock it easily
 * @param params
 * @returns {Request<DocumentClient.ScanOutput, AWSError>}
 */
exports.putItemPromise = async params => {
  return exports.dynamoDb.putItem(params).promise();
};

/**
 * Export AWS Scan promise to mock it easily
 * @param params
 * @returns {Request<DocumentClient.ScanOutput, AWSError>}
 */
exports.scanPromise = async params => {
  return exports.dynamoDb.scan(params).promise();
};
