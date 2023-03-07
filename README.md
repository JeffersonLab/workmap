# workmap [![CI](https://github.com/JeffersonLab/workmap/actions/workflows/ci.yml/badge.svg)](https://github.com/JeffersonLab/workmap/actions/workflows/ci.yml) [![Docker](https://img.shields.io/docker/v/jeffersonlab/workmap?sort=semver&label=DockerHub)](https://hub.docker.com/r/jeffersonlab/workmap)
Accelerator task list work map

---
- [Build](https://github.com/JeffersonLab/workmap#build)
- [Release](https://github.com/JeffersonLab/workmap#release)
---

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
