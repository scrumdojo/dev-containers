FROM debian:trixie

ENV USER=dev

ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install packages
RUN apt-get update \
 && apt-get install -y \
        curl \
        git \
        gh \
        sudo \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Create user with home dir and bash shell
RUN useradd --uid 1000 -U -m -s /bin/bash $USER

# Add the user to sudoers for passwordless sudo
RUN echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Default to the non-root user
USER $USER
WORKDIR /home/$USER
SHELL ["/bin/bash", "-l", "-c"]

# Install Volta and Node.js + pnpm
RUN curl https://get.volta.sh | bash

ENV VOLTA_FEATURE_PNPM=1

RUN volta install node \
 && volta install npm \
 && volta install pnpm
