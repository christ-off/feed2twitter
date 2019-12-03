"use strict";

/**
 * Returns the array of entry
 * @param feedxml
 * @return {[]|Array}
 */
exports.extractEntries = feedxml => {
  if (feedxml && Array.isArray(feedxml.feed.entry)) {
    console.log(
      `Processing Feed : ${JSON.stringify(feedxml.feed.entry.length)}`
    );
    return feedxml.feed.entry;
  } else {
    console.warn("Null feed or No entries. Returning empty array");
    return [];
  }
};
