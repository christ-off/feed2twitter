aws dynamodb query --table-name Authors --projection-expression "twitterHandle" --key-condition-expression "Author = :v1" --expression-attribute-value file://queryAuthor.json
