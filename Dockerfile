FROM debian:trixie

ENV USER=dev

# Create user with home dir and bash shell
RUN useradd --uid 1000 -U -m -s /bin/bash $USER

# Default to the non-root user
USER $USER
WORKDIR /home/$USER
