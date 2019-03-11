#!/bin/bash

# wrapper script to start the local dynamo db process.  
# Any arguments to this script will be passed directly to the dynamodb process without being
# parsed.

set -xe 

java -Djava.library.path=/var/dynamodb_wd/ -jar /var/dynamodb_wd/DynamoDBLocal.jar -sharedDb -dbPath /var/dynamodb_local $@