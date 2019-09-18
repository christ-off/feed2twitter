# feed2twitter

A nodeJS Lambda to parse a feed and post a random entry to twitter

## Steps

1. MVP : Read feed (so last 10 posts) and posts random post to twitter
2. Post with picture
3. Save to dynamoDB (to add more history), Read from dynamoDB
4. (optionnal) Add current blog history to DynamoDB
5. Get writer (may need to add to feed before)
6. Transform know writer into their twitter account (DynamoDB table for mapping ?)
7. Get editor and post using their twitter handler
8. Random text before tweet 

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