'use strict';

/**
 * This module is made to provides AWS components
 * It hides their construction
 */

const AWS = require('aws-sdk/index');

exports.dynamoDb = new AWS.DynamoDB.DocumentClient();

/**
 * Export AWS scan promise to mock it easily
 * @param params
 * @returns {Request<DocumentClient.ScanOutput, AWSError>}
 */
exports.queryPromise = async (params) => {
  return exports.dynamoDb.query(params).promise();
};

/**
 * Export AWS put promise to mock it easily
 * @param params
 * @returns {Request<DocumentClient.ScanOutput, AWSError>}
 */
exports.putPromise = async (params) => {
  return exports.dynamoDb.put(params).promise();
};