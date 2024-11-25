FROM ghcr.io/ublue-os/wolfi-dx
LABEL com.github.containers.toolbox="true" \
      usage="My (Currently in Development Experience based on Wolfi and Universal Blue" \
      summary="A cloud-native terminal experience" \
      maintainer="tj5miniop@gmail.com"

COPY extra-packages

RUN apk update && \
    apk upgrade && \
    brew update && \
    brew upgrade && \
    brew install python3 && \
    brew install --cask vscodium && \
    brew install zsh zsh-autocomplete git fastfetch cosign

RUN   ln -fs /bin/sh /usr/bin/sh && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/docker && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/flatpak && \ 
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/podman && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/transactional-update
     
