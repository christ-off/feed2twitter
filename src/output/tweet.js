"use strict";

// http module doesn't provide async/promise
const twit = require("twit");
const reader = require("../input/get-content");
const builder = require("../domain/tweet-builder");

const CONSUMER_KEY_ENV = "consumer_key";
const CONSUMER_SECRET_ENV = "consumer_secret";
const ACCESS_TOKEN_ENV = "access_token";
const ACCESS_TOKEN_SECRET = "access_token_secret";

/**
 * The twitter lib initialized
 * @type {null}
 */
let t = null;

exports.config = () => {
    t = new twit({
        consumer_key: process.env[CONSUMER_KEY_ENV],
        consumer_secret: process.env[CONSUMER_SECRET_ENV],
        access_token: process.env[ACCESS_TOKEN_ENV],
        access_token_secret: process.env[ACCESS_TOKEN_SECRET],
        timeout_ms: 60 * 1000, // optional HTTP request timeout to apply to all requests.
        strictSSL: true // optional - requires SSL certificates to be valid.
    });
};

async function tweet(info) {
    if (t == null) {
        throw new Error("Error twit lib should have been initialized");
    }
    console.log(`Going to tweet : ${JSON.stringify(info)}`);
    let status = await builder.extractStatus(info);
    let params = null;
    params = {
        status: status
    };
    console.log(`Going to tweet : ${JSON.stringify(params)}`);
    return new Promise(function (resolve, reject) {
        t.post("statuses/update", params, function (error, result) {
            if (error) {
                console.error(`Error while sending tweet`, error);
                reject(error);
            } else {
                console.log(`Tweet sent: ${JSON.stringify(result)}`);
                resolve(result);
            }
        });
    });
}

exports.post = async info => {
    return tweet(info);
};
