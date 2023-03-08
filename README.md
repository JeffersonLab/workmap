# workmap [![CI](https://github.com/JeffersonLab/workmap/actions/workflows/ci.yml/badge.svg)](https://github.com/JeffersonLab/workmap/actions/workflows/ci.yml) [![Docker](https://img.shields.io/docker/v/jeffersonlab/workmap?sort=semver&label=DockerHub)](https://hub.docker.com/r/jeffersonlab/workmap)
A [Java EE 8](https://en.wikipedia.org/wiki/Jakarta_EE) web application for geographical work coordination at Jefferson Lab.

---
- [Overview](https://github.com/JeffersonLab/workmap#overview)
- [Quick Start with Compose](https://github.com/JeffersonLab/workmap#quick-start-with-compose)
- [Install](https://github.com/JeffersonLab/workmap#install)
- [Configure](https://github.com/JeffersonLab/workmap#configure)
- [Build](https://github.com/JeffersonLab/workmap#build)
- [Release](https://github.com/JeffersonLab/workmap#release)
---

## Overview
The accelerator task list work map provides geographical context to the accelerator task list calendar and [ATLis](https://tasklists.jlab.org/).

## Quick Start with Compose
1. Grab project
```
git clone https://github.com/JeffersonLab/workmap
cd workmap
```
2. Launch [Compose](https://github.com/docker/compose)
```
docker compose up
```
3. Navigate to page
```
http://localhost:8080/workmap
```

**Note**: Login with demo username "tbrown" and password "password".

**See**: [Docker Compose Strategy](https://gist.github.com/slominskir/a7da801e8259f5974c978f9c3091d52c)

## Install
This application requires a Java 11+ JVM and standard library to run, plus a Java EE 8+ application server (developed with Wildfly).

1. Install service [dependencies](https://github.com/JeffersonLab/workmap/blob/main/deps.yml)
2. Download [Wildfly 26.1.3](https://www.wildfly.org/downloads/)
3. [Configure](https://github.com/JeffersonLab/workmap#configure) Wildfly and start it
4. Download [workmap.war](https://github.com/JeffersonLab/workmap/releases) and deploy it to Wildfly
5. Navigate your web browser to [localhost:8080/workmap](http://localhost:8080/workmap)


## Configure

### Configtime
Wildfly must be pre-configured before the first deployment of the app.  The [smoothness bash scripts](https://github.com/JeffersonLab/smoothness#configtime) can be used to accomplish this.  See the [Dockerfile](https://github.com/JeffersonLab/workmap/blob/main/Dockerfile) for an example.

### Runtime
Uses the [Smoothness Environment Variables](https://github.com/JeffersonLab/smoothness#global-runtime) plus the following application specific:

| Name                              | Description                                                                                                                                 |
|-----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|
| CALENDAR_URL                      | ATLis SAD Calendar URL                                                                                                                      |

### Database
The application requires an Oracle 18+ database with the following [schema](https://github.com/JeffersonLab/workmap/tree/main/docker/oracle/setup) installed.   The application server hosting the app must also be configured with a JNDI datasource.

## Build
This project is built with [Java 17](https://adoptium.net/) (compiled to Java 11 bytecode), and uses the [Gradle 7](https://gradle.org/) build tool to automatically download dependencies and build the project from source:

```
git clone https://github.com/JeffersonLab/workmap
cd workmap
gradlew build
```
**Note**: If you do not already have Gradle installed, it will be installed automatically by the wrapper script included in the source

**Note for JLab On-Site Users**: Jefferson Lab has an intercepting [proxy](https://gist.github.com/slominskir/92c25a033db93a90184a5994e71d0b78)

## Release
1. Bump the date, version number, and resource number in build.gradle and commit and push to GitHub (using [Semantic Versioning](https://semver.org/)).
2. Create a new release on the GitHub Releases page corresponding to the same version in the build.gradle.   The release should enumerate changes and link issues.   A war artifact can be attached to the release to facilitate easy install by users.
3. Build and publish a new Docker image [from the GitHub tag](https://gist.github.com/slominskir/a7da801e8259f5974c978f9c3091d52c#8-build-an-image-based-of-github-tag). GitHub is configured to do this automatically on git push of semver tag (typically part of GitHub release) or the [Publish to DockerHub](https://github.com/JeffersonLab/workmap/actions/workflows/docker-publish.yml) action can be manually triggered after selecting a tag.
4. Bump and commit quick start [image version](https://github.com/JeffersonLab/workmap/blob/main/docker-compose.override.yml)
