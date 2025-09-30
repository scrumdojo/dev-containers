FROM debian:trixie

ENV USER=dev

ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install packages
RUN apt-get update \
 && apt-get install -y \
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
