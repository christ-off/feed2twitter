# feed2twitter

A nodeJS Lambda to parse a feed and post a random entry to twitter

## Steps

1. ~~MVP : Read feed (so last 10 posts) and posts random post to twitter~~
2. ~~Add tags from post~~
3. ~~Post with picture~~ 
4. ~~Save to dynamoDB (to add more history), Read from dynamoDB~~
5. ~~(optionnal) Add current blog history to DynamoDB~~
6. ~~Get writer (may need to add to feed before)~~
7. ~~Transform know writer into their twitter account (DynamoDB table for mapping ?)~~
8. Enrich feed from blog with editor info ?
9. Get editor and post using their twitter handler
10. Random text before tweet 

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
