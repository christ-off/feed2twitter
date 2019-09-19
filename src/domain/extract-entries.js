'use strict';

exports.extractEntries = (feedxml) => {
    if (feedxml && Array.isArray(feedxml.feed.entry)) {
        console.log(`Processing Feed : ${feedxml.length}`);
        return feedxml.feed.entry;
    } else {
        console.warn('Null feed or No entries. Returning empty array');
        return [];
    }
};