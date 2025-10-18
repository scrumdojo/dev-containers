# Development Containers

Simple dev containers. Can be used in `devcontainer.json` and run e.g. locally or in GitHub Codespaces.

## Base Container

Base development environment with Node.js to run all common AI Coding Agent CLIs.

Available at: `ghcr.io/scrumdojo/dev-base:v1`

- Based on `debian:trixie`
- User `dev:dev` (`1000:1000`) with `sudo`
- `git` and GitHub CLI (`gh`)
- Editors `nano` and [MS Edit](https://github.com/microsoft/edit) (don't judge me)
- [Node.js](https://nodejs.org) and [pnpm](https://pnpm.io) managed by [Volta](https://volta.sh)
- [oh-my-posh](https://ohmyposh.dev)

Install common AI Coding Agent CLIs: `/home/dev/ai_cli_install.sh`

## Firebase Container

Adds `firebase-tools` with local [Firebase Emulators](https://firebase.google.com/docs/emulator-suite).

Available at: `ghcr.io/scrumdojo/dev-firebase:v1`

- Based on `ghcr.io/scrumdojo/dev-base:v1`
- Globally installed `firebase-tools` CLI
- Java JRE to run the Firebase Emulators
