# WordPress CI/CD Demo
This repository sets up Docker containers for WordPress and MySQL using `docker-compose`. Configuration is managed via Bash scripts, allowing reuse inside containers. The CI/CD pipeline is powered by GitHub Actions and runs on a self-hosted Ubuntu runner.
## Overview
- Project Purpose: Dockerized WordPress + MySQL with CI/CD via GitHub Actions
- Runner Type: Self-hosted Ubuntu runner
- Main Features: Modular workflows, .env generation, Discord notifications
## Main pipeline status
[![CI](https://github.com/pazderskipawel/githubactions/actions/workflows/deploy_everything.yml/badge.svg?branch=main)](https://github.com/pazderskipawel/githubactions/actions/workflows/deploy_everything.yml?query=branch%3Amain)
## Getting Started
- Setup Self-Hosted Runner
  - to add runner: go to Repository settings > Actions > runners > add new self-hosted runner
  - if you want to autostart worker use `sudo ./svc.sh` instead of `.run.sh`, it will work as service ([source](https://docs.github.com/en/actions/how-tos/managing-self-hosted-runners/configuring-the-self-hosted-runner-application-as-a-service))
## CI/CD Workflows
- Reusable workflows
- Automatic installation of required components
- Setting up docker environment
## Secrets & Variables
- GitHub Secrets used for credentials
- `.env` file generated dynamically
## Maintenance & Cleanup
- Docker pruning
- Workflow failure notifications
