'use strict';

const disabler = require('../utils/console-disabler');

const LIMIT = 280;
const PREFIX = 'Ancien avis de #Lecture : ';
const SEPARATOR = ' - ';

function tagify(category){
  return '#'+ category.replace('-','');
}
/**
 * This function extract tags (but NOT the first one and make tags out of them
 * @param categories [catgory]
 */
function extractTags(categories) {
  if (!Array.isArray(categories)){
    return null;
  } else {
    let result = '';
    for (var i = 1; i < categories.length; i++) {
      let categoryText = categories[i].$.term;
      result = result + ' ' + tagify(categoryText);
    }
    return result;
  }
}

exports.extractStatus = (entry) => {
  if (disabler.isConsoleLogEnabled()) {
    console.log(`Processing : ${JSON.stringify(entry)}`);
  }
  if (entry){
    let title = entry.title[0]._;
    let writer = entry.category[0].$.term;
    let titleWithoutTags = PREFIX + title + SEPARATOR + writer;
    let tags = extractTags(entry.category);
    let link = entry.link[0].$.href;
    if (tags == null || (titleWithoutTags + tags).length > LIMIT){
      return titleWithoutTags + ' ' + link;
    } else {
      return titleWithoutTags + tags + ' ' + link;
    }
  } else {
    console.warn('Null entry. Returning null');
    return [];
  }
};