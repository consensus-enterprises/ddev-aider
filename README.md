[![add-on registry](https://img.shields.io/badge/DDEV-Add--on_Registry-blue)](https://addons.ddev.com)
[![tests](https://github.com/consensus-enterprises/ddev-aider/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/consensus-enterprises/ddev-aider/actions/workflows/tests.yml?query=branch%3Amain)
[![last commit](https://img.shields.io/github/last-commit/consensus-enterprises/ddev-aider)](https://github.com/consensus-enterprises/ddev-aider/commits)
[![release](https://img.shields.io/github/v/release/consensus-enterprises/ddev-aider)](https://github.com/consensus-enterprises/ddev-aider/releases/latest)

# DDEV Aider

## Overview

This add-on integrates Aider into your [DDEV](https://ddev.com/) project.

## Installation

```bash
ddev add-on get consensus-enterprises/ddev-aider
ddev restart
```

After installation, make sure to commit the `.ddev` directory to version control.

## Usage

| Command | Description |
| ------- | ----------- |
| `ddev describe` | View service status and used ports for Aider |
| `ddev logs -s aider` | Check Aider logs |

## Advanced Customization

To change the Docker image:

```bash
ddev dotenv set .ddev/.env.aider --aider-docker-image="ddev/ddev-utilities:latest"
ddev add-on get consensus-enterprises/ddev-aider
ddev restart
```

Make sure to commit the `.ddev/.env.aider` file to version control.

All customization options (use with caution):

| Variable | Flag | Default |
| -------- | ---- | ------- |
| `AIDER_DOCKER_IMAGE` | `--aider-docker-image` | `ddev/ddev-utilities:latest` |

## Credits

**Contributed and maintained by [@consensus-enterprises](https://github.com/consensus-enterprises)**
