'use strict';

const disabler = require('../utils/console-disabler');

exports.extractEntries = (feedxml) => {

  if (disabler.isConsoleLogEnabled()) {
    console.log(`Processing : ${JSON.stringify(feedxml)}`);
  }
  if (feedxml && Array.isArray(feedxml.feed.entry)){
    return feedxml.feed.entry;
  } else {
    console.warn('Null feed or No entries. Returning empty array');
    return [];
  }

};