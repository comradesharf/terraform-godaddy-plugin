#!/usr/bin/env bash

set -u -e -o pipefail

VERSION=1.0.0

docker build --rm \
    -t helixector/terraform-godaddy-plugin:latest \
    -t helixector/terraform-godaddy-plugin:${VERSION} \
    .

docker push helixector/terraform-godaddy-plugin:latest

docker push helixector/terraform-godaddy-plugin:${VERSION}
