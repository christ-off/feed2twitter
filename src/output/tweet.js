'use strict';

// http module doesn't provide async/promise
const disabler = require('../utils/console-disabler');

exports.tweet = async (entry) => {

  if (disabler.isConsoleLogEnabled()) {
    console.log(`Going to tweet : ${entry}`);
  }
    return null;
};