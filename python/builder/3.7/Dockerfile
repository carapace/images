# Ubuntu image containing pip and python
FROM python:3.7

# File Author / Maintainer
MAINTAINER carapace.io

RUN apt-get update && apt-get install -y \
    git \
    software-properties-common

RUN pip install --user --upgrade pipenv

# Adding pipenv, virtualenv and other helpers to PATH
ENV PATH=$PATH:/root/.local/bin

