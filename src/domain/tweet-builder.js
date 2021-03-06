"use strict";

const twitterAuthor = require("./get-author-twitter-handle");
const tagify = require("./tagify");
const LIMIT = 280;
const PREFIX = "Ancien avis de #Lecture : ";
const SEPARATOR = " - ";

function extractTags(tagstring) {
  let result = "";
  let tags = tagstring.split(",");
  for (let i = 0; i < tags.length; i++) {
    result = result + " " + tagify.tagify(tags[i].trim());
  }
  return result;
}

exports.extractStatus = async info => {
  if (info) {
    let writer = await twitterAuthor.getAuthorTwitterHandle(info.writer);
    let titleWithoutTags = PREFIX + info.title + SEPARATOR + writer;
    let hashtags = extractTags(info.tags);
    let link = info.link;
    if (hashtags == null || (titleWithoutTags + hashtags).length > LIMIT) {
      return titleWithoutTags + " " + link;
    } else {
      return titleWithoutTags + hashtags + " " + link;
    }
  } else {
    console.warn("Null info. Returning null");
    return null;
  }
};