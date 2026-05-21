[![add-on registry](https://img.shields.io/badge/DDEV-Add--on_Registry-blue)](https://addons.ddev.com)
[![tests](https://github.com/consensus-enterprises/ddev-aider/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/consensus-enterprises/ddev-aider/actions/workflows/tests.yml?query=branch%3Amain)
[![last commit](https://img.shields.io/github/last-commit/consensus-enterprises/ddev-aider)](https://github.com/consensus-enterprises/ddev-aider/commits)
[![release](https://img.shields.io/github/v/release/consensus-enterprises/ddev-aider)](https://github.com/consensus-enterprises/ddev-aider/releases/latest)

# DDEV Aider

## Overview

This add-on integrates [Aider](https://aider.chat/) (an AI pair-programming tool) into your [DDEV](https://ddev.com/) project.

## Installation

```bash
ddev add-on get consensus-enterprises/ddev-aider
ddev restart
```

After installation, make sure to commit the `.ddev` directory to version control.

## Usage

| Command | Description |
| ------- | ----------- |
| `ddev aider` | Launch Aider (passing CLI options as normal) |
| `ddev logs -s aider` | Check Aider logs |

### API Keys

To use Aider, it must connect to an LLM. We recommend using locally hosted LLMs whenever possible. However, when a commercial LLM is used, an API key must be provided. As such, we recommend using `.ddev/.env.aider` to provide API keys. Obviously, you should take steps to avoid inadvertently committing keys into your version control system. So we also *highly recommend* adding `.ddev/.env.aider` to your `.gitignore`.

```bash
ddev dotenv set .ddev/.env.aider --gemini-api-key=...
echo .ddev/.env.aider >> .gitignore
```

For a full list of supported LLMs, review the [API key environment variables](https://aider.chat/docs/llms/other.html#other-api-key-variables) in the docs.

## Advanced Configuration

It is common to commit `.env.<service>` files associated with DDEV add-ons, especially to provide service-specific configuration. However, in this case, we recommend using a configuration file (`.ddev/aider.conf.yml`) instead.

To customize the behaviour of Aider, edit the provided `.ddev/aider.conf.yml`. For a full list of available options, refer to the [Aider config docs](https://aider.chat/docs/config/aider_conf.html).

### Override Docker image

To temporarily change the Docker image:
```
ddev dotenv set .ddev/.env.aider --aider-docker-image="paulgauthier/aider-full:latest"
ddev restart
```

To make this change permanent, update the image specified in `.ddev/docker_compose.aider.yaml`.

## Credits

**Contributed and maintained by [@ergonlogic](https://gitlab.com/ergonlogic) (Christopher Gervais) and [@star-szr](https://gitlab.com/star-szr) (Scott Zhu Reeves) on behalf of [Consensus Enterprises](https://consensus.enterprises).**
