'use strict';

module.exports.processatomfeed = async event => {

  // STEP 1 : Read config and params

  // STEP 2 : Parse feed

  // STEP 3 : Choose

  // STEP 4 : Log (number of entries + selected entry)

  // STEP 5 : Post

  return {
    statusCode: 200,
    body: JSON.stringify(
      {
        message: 'Go Serverless v1.0! Your function executed successfully!',
        input: event,
      },
      null,
      2
    ),
  };

  // Use this code if you don't use the http event with the LAMBDA-PROXY integration
  // return { message: 'Go Serverless v1.0! Your function executed successfully!', event };
};
