# feed2twitter

A nodeJS Lambda to parse a feed and post a random entry to twitter.  

[![CodeQL](https://github.com/christ-off/feed2twitter/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/christ-off/feed2twitter/actions/workflows/codeql-analysis.yml) 
[![Node.js CI](https://github.com/christ-off/feed2twitter/actions/workflows/node.js.yml/badge.svg)](https://github.com/christ-off/feed2twitter/actions/workflows/node.js.yml)

## Requirements

* Maven >3 [use SDKMan the super hero](https://sdkman.io/)
* [Terraform.io](https://www.terraform.io/)
* Node v10.16.3 use [Node Version Manager](https://github.com/nvm-sh/nvm)
* AWS Credentials on appropriate user
* Twitter Application credentials 

## Configuration

In terraform folder create a terraform.tfvars file 

    aws_access_key = "..."  
    aws_secret_key = "..."  
    feed = "..."  
    consumer_key = "..."  
    consumer_secret = "..."  
    access_token = "..."  
    access_token_secret = "..."
    
## DynamoDB

1. Download [DynamoDB Local](https://docs.aws.amazon.com/en_pv/amazondynamodb/latest/developerguide/DynamoDBLocal.html)
2. Check : `aws dynamodb list-tables --endpoint-url http://localhost:8000`
