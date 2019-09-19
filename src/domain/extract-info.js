'use strict';

/**
 * This function extract tags (but NOT the first one and make tags out of them
 * @param entry
 * @return string[] array of strings transformed into hashtags
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
        return result;
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

function extractImageUrl(entry) {
    if (!entry) {
        return null;
    } else {
        return entry["media:thumbnail"][0].$.url;
    }
}

/**
 * Return the stripped down structure to be used to post tweet
 * @param entry
 * @return {{imageUrl: null, id: null, writer: *, tag: *, title: *}}
 */
exports.extractEntryInformation = (entry) => {
    return {
        id: extractId(entry),
        title: extractTitle(entry),
        writer: extractWriter(entry),
        tags: extractTags(entry),
        link: extractLink(entry),
        imageUrl: extractImageUrl(entry)
    }
};