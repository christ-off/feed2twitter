'use strict';

// http module doesn't provide async/promise
const disabler = require('../utils/console-disabler');
const twit = require('twit');
const transformer = require('../domain/transform-entry');

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
};

exports.tweet = async (entry) => {
    if (t == null) {
        throw "Error twit lib should have been initialized";
    }
    if (disabler.isConsoleLogEnabled()) {
        console.log(`Going to tweet : ${JSON.stringify(entry)}`);
    }
    let status = transformer.extractStatus(entry);
    let params = {
        status: status
    };
    if (disabler.isConsoleLogEnabled()) {
        console.log(`Going to tweet : ${JSON.stringify(params)}`);
    }
    return new Promise(function (resolve, reject) {
        t.post('statuses/update', params, function (error, result) {
            if (error) {
                console.error(`Error while sending tweet`, error);
                reject(error);
            } else {
                if (disabler.isConsoleLogEnabled()) {
                    console.log(`Tweet sent: ${JSON.stringify(result)}`);
                }
                resolve(result);
            }
        })
    });
};