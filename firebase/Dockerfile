FROM ghcr.io/scrumdojo/dev-node:v1

USER root

# Install Java JRE headless
RUN apt-get update \
 && apt-get install -y default-jre-headless \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

USER $USER

# Install Firebase CLI
RUN npm install -g firebase-tools \
 && rm -rf ~/.npm
