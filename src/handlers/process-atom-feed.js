'use strict';

const repository = require('../repository/feed-repository');
const twitter = require('../output/tweet');
const readfeedsave = require('../domain/read-feed-and-save');

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
    // STEP 4 : Read current feed and add to table
    await readfeedsave.readFeedAndSave(feed);
    // STEP 5 : Pick and read one
    const randomId = await repository.getRandomItemId();
    if (!randomId){
        console.warn('No randomId aborting');
        throw new Error('No randomId aborting');
    }
    const info = await repository.getItem(randomId);
    console.log(`the chosen one ${JSON.stringify(info)}`);
    // STEP 6 : Post to twitter
    twitter.config();
    return twitter.post(info);
};