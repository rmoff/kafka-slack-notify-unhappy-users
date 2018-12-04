## What is it

A hacky python script to send push notifications to Slack driven by a Kafka topic called `UNHAPPY_PLATINUM_CUSTOMERS`. 

Overrides: 

* BOOTSTRAP_SERVERS
* SLACK_API_TOKEN
* KAFKA_TOPIC

## Run 

This will pull down the image from Docker hub. 

### Docker 

    docker run -e SLACK_API_TOKEN=xxx-token-xxx \
               -e BOOTSTRAP_SERVERS=kafka:29092 \
               --network docker-compose_default \
               rmoff/kafka-slack-notify-unhappy-users:latest

### Docker Compose

    kafka-slack-notify-unhappy-users:
      image: rmoff/kafka-slack-notify-unhappy-users:latest
      environment: 
        - BOOTSTRAP_SERVERS=kafka:29092
        - SLACK_API_TOKEN=xxxxxxx

## Build

You can build this image and use it locally using the `Dockerfile`: 

    docker build --tag kafka-slack-notify-unhappy-users .
