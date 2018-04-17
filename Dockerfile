FROM maven:3.5.2-jdk-8-alpine

ARG VCS_REF
ARG BUILD_DATE

# Metadata
LABEL maintainer="Marcos Aranda" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/marandalucas/docker-mvn-git" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.docker.dockerfile="/Dockerfile"

RUN apk add --update git openssh nodejs && rm -rf /var/cache/apk/*