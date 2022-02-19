"use strict";

/**
 * This function extract tags (but NOT the first one and make tags out of them
 * @param entry
 * @return string tags separated by comma
 */
function extractTags(entry) {
  if (!entry || !entry.category || !Array.isArray(entry.category)) {
    return null;
  } else {
    let result = [];
    for (let i = 1; i < entry.category.length; i++) {
      let categoryText = entry.category[i].$.term;
      result.push(categoryText);
    }
    return result.join(", ");
  }
}

/**
 * Return the title of the entry
 * @param entry
 * @return null|string
 */
function extractTitle(entry) {
  if (!entry) {
    return null;
  } else {
    return entry.title[0]._;
  }
}

/**
 * Return the author
 * @param entry
 * @return null|string
 */
function extractWriter(entry) {
  if (!entry) {
    return null;
  } else {
    return entry.category[0].$.term;
  }
}

function extractLink(entry) {
  if (!entry) {
    return null;
  } else {
    return entry.link[0].$.href;
  }
}

function extractId(entry) {
  if (!entry) {
    return null;
  } else {
    return entry.id[0];
  }
}

/**
 * Return the stripped down structure to be used to post tweet
 * @param entry
 * @return {id: null, writer: *, tag: *, title: *}}
 */
exports.feedEntryToDynamoDb = entry => {
  return {
    Item: {
      Id: { S: extractId(entry) },
      title: { S: extractTitle(entry) },
      writer: { S: extractWriter(entry) },
      date: { S: entry.published[0] },
      tags: { S: extractTags(entry) },
      link: { S: extractLink(entry) },
    },
    ReturnConsumedCapacity: "TOTAL",
    TableName: "Feed"
  };
};
