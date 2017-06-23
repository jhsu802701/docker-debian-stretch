#!/bin/bash

ABBREV='min'
OWNER='jhsu802701'
DISTRO='debian'
SUITE='stretch'
DOCKER_IMAGE="$OWNER/32bit-$DISTRO-$SUITE-$ABBREV"
CONTAINER="container-32bit-$DISTRO-$SUITE-$ABBREV"
TGZ_FILE="32bit-$DISTRO-$SUITE-$ABBREV.tgz"

bash setup.sh $ABBREV $DOCKER_IMAGE $CONTAINER $TGZ_FILE
