# Ubuntu image containing pip and python
FROM carapaceio/pythonbuilder:3.6

# File Author / Maintainer
MAINTAINER carapace.io

RUN add-apt-repository ppa:fkrull/deadsnakes
RUN apt-get install \
    build-essential \
    libssl-dev \
    libffi-dev \
    gcc \
    libusb-1.0-0-dev \
    libudev-dev \
    python3-dev -y

