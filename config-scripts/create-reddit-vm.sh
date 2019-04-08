#! /bin/bash
gcloud compute instances create reddit-app-1\
  --image-family reddit-full \
  --tags puma-server \
  --restart-on-failure
