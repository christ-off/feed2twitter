'use strict';

// http module doesn't provide async/promise
const twit = require('twit');
const reader = require('../input/get-content');
const builder = require('../domain/tweet-builder');

const CONSUMER_KEY_ENV = 'consumer_key';
const CONSUMER_SECRET_ENV = 'consumer_secret';
const ACCESS_TOKEN_ENV = 'access_token';
const ACCESS_TOKEN_SECRET = 'access_token_secret';

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
        timeout_ms: 60 * 1000,  // optional HTTP request timeout to apply to all requests.
        strictSSL: true,     // optional - requires SSL certificates to be valid.
    });
};

/**
 * Post Media
 * @param info with image url
 * @return {Promise<data>} data from twitter
 */
async function mediaUpload(info) {
    let content = await reader.getBinaryContent(info.imageUrl);
    let base64 = content.toString('base64');
    return new Promise(function (resolve, reject) {
        t.post('media/upload', {media_data: base64}, function (err, result) {
            if (err) {
                console.error(`Error uploading image`, err);
                reject(err);
            } else {
                console.log(`Tweet sent: ${JSON.stringify(result)}`);
                resolve(result);
            }
        });
    });
}

async function mediaMetadata(info, media_id_string) {
    if (media_id_string == null) {
        console.warn('No media Id');
        return null;
    }
    let meta_params = {media_id: media_id_string, alt_text: {text: info.title}};
    return new Promise(function (resolve, reject) {
        t.post('media/metadata/create', meta_params, function (err, result) {
            if (err) {
                console.error(`Error adding metadate to image`, err);
                reject(err);
            } else {
                console.log(`Metedata added: ${JSON.stringify(result)}`);
                resolve(result);
            }
        });
    });
}

async function tweet(info, media_id_string) {
    if (t == null) {
        throw "Error twit lib should have been initialized";
    }
    console.log(`Going to tweet : ${JSON.stringify(info)}`);
    let status = builder.extractStatus(info);
    let params = null;
    if (media_id_string == null) {
        params = {
            status: status
        };
    } else {
        params = {
            status: status,
            media_ids: [media_id_string]
        };
    }
    console.log(`Going to tweet : ${JSON.stringify(params)}`);
    return new Promise(function (resolve, reject) {
        t.post('statuses/update', params, function (error, result) {
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

exports.post = async (info) => {
    let imageData = await mediaUpload(info);
    let imageId = imageData.media_id_string;
    await mediaMetadata(info, imageId);
    return tweet(info, imageId);
};