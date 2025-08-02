This repo sets up a docker containers with wordpress and mysql database using docker-compose.
Configuration for wordpress is stored in bash scripts so they can be used also inside container if needed.

Main workflow is setting everything up automatically on self-hosted linux machine (ubuntu)

Workflow pipeline for main branch
[![CI](https://github.com/pazderskipawel/githubactions/actions/workflows/deploy_everything.yml/badge.svg?branch=main)](https://github.com/pazderskipawel/githubactions/actions/workflows/deploy_everything.yml?query=branch%3Amain)

Setting up self-hosted runner
- This repo is using self hosted ubuntu runner
  - to add runner: go to Repository settings > Actions > runners > add new self-hosted runner
  - if you want to autostart worker use `sudo ./svc.sh` instead of `.run.sh`, it will work as service ([source](https://docs.github.com/en/actions/how-tos/managing-self-hosted-runners/configuring-the-self-hosted-runner-application-as-a-service))

