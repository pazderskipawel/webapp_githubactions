[![CI](https://github.com/pazderskipawel/githubactions/actions/workflows/cicd.yml/badge.svg)](https://github.com/pazderskipawel/githubactions/actions/workflows/cicd.yml)

wordpress website which runs on docker started from github actions pipeline

Setting up runner
- This repo is using self hosted ubuntu runner
  - to add runner: go to Repository settings > Actions > runners > add new self-hosted runner
  - if you want to autostart worker use `sudo ./svc.sh` instead of `.run.sh`, it will work as service ([source](https://docs.github.com/en/actions/how-tos/managing-self-hosted-runners/configuring-the-self-hosted-runner-application-as-a-service))