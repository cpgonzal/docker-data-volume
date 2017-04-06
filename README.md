[![](https://images.microbadger.com/badges/image/cpgonzal/docker-data-volume.svg)](https://microbadger.com/images/cpgonzal/docker-data-volume "Get your own image badge on microbadger.com")

[![](https://images.microbadger.com/badges/version/cpgonzal/docker-data-volume.svg)](https://microbadger.com/images/cpgonzal/docker-data-volume "Get your own version badge on microbadger.com")

## Data Volume Dockerfile

This repository contains **Dockerfile** for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/dockerfile/cpgonzal/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [dockerhub/ubuntu](https://hub.docker.com/r/_/ubuntu/)

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/dockerfile/cpgonzal/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull cpgonzal/docker-data-volume`

   (alternatively, you can build an image from Dockerfile: `docker build -t="cpgonzal/docker-data-volume" github.com/cpgonzal/docker-data-volume`)


### Usage

#### Run `cpgonzal/docker-data-volume` container

    docker run -d cpgonzal/docker-data-volume

#### Run `cpgonzal/docker-data-volume` container with persistent shared directories.

    docker run -d -v <data-dir>:/data -v <libraries-dir>:/libraries cpgonzal/docker-data-volume