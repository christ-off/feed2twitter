'use strict';

const repository = require('../repository/feed-repository');

const getter = require('../input/get-content');
const xml2js = require('xml2js');
const entriesextractor = require('../domain/extract-entries');
const infoextractor = require('../domain/extract-info');
const twitter = require('../output/tweet');

const FEED_ENV = 'feed';
const LOW_LIMIT = 10;

module.exports.processAtomFeed = async () => {
    // STEP 1 : Read config and params
    const feed = process.env[FEED_ENV];
    // STEP 2 : Check if feed table is too empty
    let countItems = await repository.countFeedItems();
    console.log(`Number of items present in Feed table ${countItems}`);
    // STEP 3 (optional) : Load items embedded
    if (countItems < LOW_LIMIT) {
        console.log(`Going load feed table`);
        let countLoaded = await repository.loadEmbeddedItems();
        console.log(`${countLoaded} items load in Feed table`);
        countItems = await repository.countFeedItems();
        if (countItems < countLoaded){
            console.warn(`new ${countItems} items is below ${countLoaded} loaded ones`);
        }
    } else {
        console.log(`No need to load feed table as there is already ${countItems} items`);
    }
    return countItems;
    // STEP 4 : Read current feed

    // STEP 5 : Add current feed to feed table

    // STEP 6 : Count total items

    // STEP 7 : Pick and read one

    // STEP 8 : Prepare for twitter

    // STEP 9 : Post to twitter

    // STEP 10 : Return
    return countItems;
};


/*

 console.log(`Going to process ${feed}`);

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

 */