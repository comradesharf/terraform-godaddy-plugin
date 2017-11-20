FROM hashicorp/terraform:0.10.8

LABEL maintainer="comradesharf@gmail.com"

ARG TERRAFORM_GODADDY_VERSION="v1.4.2"

# GoDaddy key and secret

ENV GD_KEY abc

ENV GD_SECRET 123

RUN set -u -e -o pipefail \
    && apk add --virtual .build-dependencies wget \
    && wget https://raw.githubusercontent.com/n3integration/terraform-godaddy/${TERRAFORM_GODADDY_VERSION}/install.sh \
    && sh install.sh \
    && apk del .build-dependencies