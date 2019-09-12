'use strict';

const disabler = require('../utils/console-disabler');
const getter = require('../input/get-content');
const xml2js = require('xml2js');
const extractor = require('../domain/extract-entries');
const twitter = require('../output/tweet');

module.exports.processAtomFeed = async event => {

    // STEP 1 : Read config and params
    let feed = process.env['FEED'];
    if (disabler.isConsoleLogEnabled()) {
        console.log(`Going to process ${feed}`);
    }
    // STEP 2 : Parse feed
    let feedContent =  await getter.getContent(feed, null);
    let xml = await xml2js.parseStringPromise(feedContent);
    let entries = extractor.extractEntries(xml);
    // STEP 4 : Log (number of entries + selected entry)
    if (entries == null || !Array.isArray(entries) || entries.length == 0){
        console.warn('No entries in feed. Aborting');
        const response = {
            statusCode: 400,
            body: 'Feed is empty or as no entry',
        };
        return response;
    }
    if (disabler.isConsoleLogEnabled()) {
        console.log(`Got ${entries.length} entries`);
    }
    // STEP 3 : Choose between 1 (not the newest 0) up to size of array
    let rank = Math.floor(Math.random() * entries.length - 1) + 1;
    if (disabler.isConsoleLogEnabled()) {
        console.log(`Entry of rank ${rank} choosen ${JSON.stringify(entries[rank])}`);
    }
    // STEP 5 : Post
    return twitter.tweet(entries[rank]);
};
