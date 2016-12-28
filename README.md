## Data Volume Dockerfile


This repository contains **Dockerfile** for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/dockerfile/rabbitmq/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [dockerhub/ubuntu](https://hub.docker.com/r/_/ubuntu/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://hub.docker.com/u/cpgonzal/docker-data-volume/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull cpgonzal/docker-data-volume`

   (alternatively, you can build an image from Dockerfile: `docker build -t="cpgonzal/docker-data-volume" github.com/cpgonzal/docker-data-volume`)


### Usage

#### Run `docker-data-volume`

    docker run -d cpgonzal/docker-data-volume

#### Run `cpgonzal/docker-data-volume` w/ persistent shared directories.

    docker run -d -v <log-dir>:/data -v <data-dir>:/libraries cpgonzal/docker-data-volume