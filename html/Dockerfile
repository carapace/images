FROM python:3.6-stretch

MAINTAINER carapace.io
LABEL description="an image for testing HTML for CI purposes"
LABEL supported="CircleCI"
LABEL version="0.0.1"

RUN apt-get update && apt-get install -y openjdk-8-jre


RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt install nodejs -y
RUN npm install -g firebase-tools

RUN pip install html5validator
