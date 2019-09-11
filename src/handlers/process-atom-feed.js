'use strict';

const disabler = require('../utils/console-disabler');
const getter = require('../input/get-content');
const xml2js = require('xml2js');

module.exports.processAtomFeed = async event => {

    // STEP 1 : Read config and params
    let feed = process.env['FEED'];
    if (disabler.isConsoleLogEnabled()) {
        console.log(`Going to process ${feed}`);
    }
    // STEP 2 : Parse feed
    let feedContent =  await getter.getContent(feed, null);
    let xml = await xml2js.parseStringPromise(feedContent);
    // STEP 3 : Choose
    console.log(JSON.stringify(xml));
    // STEP 4 : Log (number of entries + selected entry)

    // STEP 5 : Post

    return feedContent.length;

    // Use this code if you don't use the http event with the LAMBDA-PROXY integration
    // return { message: 'Go Serverless v1.0! Your function executed successfully!', event };
};
