#!/bin/bash
docker compose -f ../postgresandmongo/docker-compose.yml up -d 
echo "You are currently entering into mongodb container and may run your command queries accordingly. 
If you wish to use postgresql instead, please exit and run the following command:
docker exec -it postgres psql -U admin -d mydb"
sl
docker exec -it mongo mongosh -u admin -p password --authenticationDatabase admin --eval
