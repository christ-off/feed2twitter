'use strict';

const getter = require('../input/get-content');
const xml2js = require('xml2js');
const entriesextractor = require('../domain/extract-entries');
const infoextractor = require('../domain/extract-info');
const twitter = require('../output/tweet');

const FEED_ENV = 'feed';

module.exports.processAtomFeed = async () => {

    // STEP 1 : Read config and params
    let feed = process.env[FEED_ENV];
    console.log(`Going to process ${feed}`);
    // STEP 2 : Parse feed
    let feedContent = await getter.getContent(feed, null);
    let xml = await xml2js.parseStringPromise(feedContent);
    let entries = entriesextractor.extractEntries(xml);
    // STEP 4 : Log (number of entries + selected entry)
    if (entries == null || !Array.isArray(entries) || entries.length === 0) {
        console.warn('No entries in feed. Aborting');
        return {
            statusCode: 400,
            body: 'Feed is empty or as no entry',
        };
    }
    console.log(`Got ${entries.length} entries`);
    // STEP 3 : Choose between 1 (not the newest 0) up to size of array
    let rank = Math.floor(Math.random() * entries.length - 1) + 1;
    console.log(`Entry of rank ${rank} choosen ${JSON.stringify(entries[rank])}`);
    // STEP 5 : Post
    twitter.config();
    let info = infoextractor.extractEntryInformation(entries[rank]);
    if (!info) {
        console.warn('Unable to extract info from entry. Aborting');
        throw new Error(`Error extract info from ${JSON.stringify(entries[rank])}`);
    }
    return twitter.post(info);
};
