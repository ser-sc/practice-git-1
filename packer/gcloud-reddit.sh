#! /bin/bash
gcloud compute instances create reddit-app-1\
  --image reddit-base-1609941986  \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure








