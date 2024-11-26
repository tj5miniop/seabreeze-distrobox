ARG SOURCE_IMAGE_NAME="${SOURCE_IMAGE_NAME:-bluefin-cli}"
ARG SOURCE_IMAGE_REGISTRY="${SOURCE_IMAGE_REGISTRY:-ghcr.io/ublue-os}"
ARG SOURCE_IMAGE="${SOURCE_IMAGE_REGISTRY}/${SOURCE_IMAGE_NAME}"

FROM $SOURCE_IMAGE:latest
SHELL ["/bin/bash", "-c"]
LABEL com.github.containers.toolbox="true" \
      usage="My Fork of the Bluefin CLI distrobox OCI image from Universal Blue" \
      summary="A cloud-native terminal experience" \
      maintainer="tj5miniop@gmail.com"
