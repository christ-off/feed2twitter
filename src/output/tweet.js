'use strict';

// http module doesn't provide async/promise
const disabler = require('../utils/console-disabler');
const twit = require('twit');

/**
 * The twitter lib initialized
 * @type {null}
 */
let t = null;

exports.config = () => {
    t = new twit({
        consumer_key: process.env['CONSUMER_KEY'],
        consumer_secret: process.env['CONSUMER_SECRET'],
        access_token: process.env['ACCESS_TOKEN'],
        access_token_secret: process.env['ACCESS_TOKEN_SECRET'],
        timeout_ms: 60 * 1000,  // optional HTTP request timeout to apply to all requests.
        strictSSL: true,     // optional - requires SSL certificates to be valid.
    });
}

exports.tweet = async (entry) => {
    if (t == null) {
        throw new Exception('Error twit lib should have been initialized');
    }
    if (disabler.isConsoleLogEnabled()) {
        console.log(`Going to tweet : ${entry}`);
    }
    return new Promise(function (resolve, reject) {
        t.post('statuses/update', {status: 'hello world!'}, function (error, result) {
            if (error) {
                reject(error);
            } else {
                resolve(result);
            }
        })
    });
};