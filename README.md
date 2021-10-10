[![Build Status](https://dev.azure.com/tectonic-typesetting/tectonic/_apis/build/status/tectonic-typesetting.tectonic-relay-service?branchName=main)](https://dev.azure.com/tectonic-typesetting/tectonic/_build/latest?definitionId=12&branchName=main)

# Tectonic Relay Service

This repository defines a Docker container that implements Tectonic’s "relay"
URL redirection service.


## Building / Installation

This isn't really software that "install" yourself. The output artifact of
this repository is a Docker image that you obtain with the command:

```
docker build -t tectonictypesetting/relay-service:latest .
```

You can then run the server locally with a command such as:

```
docker run --rm -p 8888:80 tectonictypesetting/relay-service:latest
```

The build and publication of this image is automated through the
`azure-pipelines.yml` file. The image ultimately emerges as
[tectonictypesetting/relay-service](https://hub.docker.com/repository/docker/tectonictypesetting/relay-service).
A webhook is configured there to update the running service on Azure, which is
exposed at `relay.fullyjustified.net`.


## Legalities

The code in this repository is copyright the Tectonic Project, and licensed
under the MIT License.
