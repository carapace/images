FROM carapaceio/go:1.11

MAINTAINER carapace.io
LABEL description="a protobuf generator images for CI purposes built on a Golang image"
LABEL supported="CircleCI"
LABEL version="0.0.1"

# Use unicode
RUN locale-gen C.UTF-8 || true
ENV LANG=C.UTF-8

RUN sudo apt-get update; \
    sudo wget https://github.com/protocolbuffers/protobuf/releases/download/v3.6.1/protoc-3.6.1-linux-x86_64.zip; \
    unzip protoc-3.6.1-linux-x86_64.zip -d . ;\
    rm protoc-3.6.1-linux-x86_64.zip; \
    sudo apt-get remove -y wget unzip; \
    sudo apt-get autoremove -y; \
    echo 'export PATH=./bin:$PATH' >> $BASH_ENV; \
    source /home/circleci/.bashrc; \
    go get -u -v github.com/golang/protobuf/protoc-gen-go; \