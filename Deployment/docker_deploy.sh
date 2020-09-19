#!/bin/bash
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
docker push aronanubhav/udacity-restapi-user
docker push aronanubhav/udacity-restapi-feed
docker push aronanubhav/reverseproxy
docker push aronanubhav/udacity-frontend:local