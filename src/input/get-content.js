"use strict";

// http module doesn't provide async/promise
const rp = require("request-promise");

/**
 * Get an URL content and return it in callback call
 * @param host not endeing with /
 * @param path starting with /
 * @return html content or null if an error occurred
 */
exports.getContent = async (host, path) => {
  const url = host + (path ? path : "");
  console.log(`Going to get : ${url}`);
  try {
    let content = await rp(url);
    console.log(`All data retrieved ${content.length} bytes`);
    return content;
  } catch (e) {
    console.error(`Unexpected http error ${e.message} for ${url}`);
    return null;
  }
};

/**
 * See https://github.com/request/request#requestoptions-callback
 * @param url of binary resource. No utf-8 or other encoding transformataion will be applied
 * @return {Promise<Buffer>} yes a Buffer NOT a binary content
 */
exports.getBinaryContent = async url => {
  const options = {
    uri: url,
    encoding: null
  };
  console.log(`Going to get : ${JSON.stringify(options)}`);
  try {
    let content = await rp(options);
    console.log(`All data retrieved ${content.length} bytes`);
    return content;
  } catch (e) {
    console.error(`Unexpected http error ${e.message} for ${url}`);
    return null;
  }
};
