# <img src="https://docs.lido.fi/img/logo.svg" alt="Lido" width="46"/> Python template

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## General

This is a pure python 3 template for new projects and bots on GitHub.

> 🚧 CI and deploy
> 
> After creating repo from the template make sure that you have correctly filled TARGET_WORKFLOW field in:
> - .github/workflows/ci-dev.yml
> - .github/workflows/ci-staging.yml
> - .github/workflows/ci-prod.yml

### HOW TO USE THIS TEMPLATE

> **DO NOT FORK** this is meant to be used from **[Use this template](https://github.com/lidofinance/python-base-template/generate)** feature.

1. Click on **[Use this template](https://github.com/lidofinance/python-base-template/generate)**
2. Give a name to your project  
   (e.g. `my_awesome_project` the recommendation is to use all lowercase and underscores separation for repository names.)
3. Rename `myproject` to `{your_project_name}`
5. Then clone your new project and happy coding!

### Secrets

List of secrets that you should add to secrets

* TARGET_REPO - Repository with our infra (lidofinance/infra-mainnet). This var need to run workflows from target repository.
* APP_ID and APP_PRIVATE_KEY - are ID and key to application that calls workflows in another application.

## What is included on this template?

- 🐋 A simple [Dockerfile](Dockerfile) to build a container image for your project.  
- 🧪 Testing structure using [pytest](https://docs.pytest.org/en/latest/).
- 🔄 Continuous integration using [GitHub Actions](.github/workflows/) with jobs to lint, tests.
- 🌊 Tracking and logging via [Prometheus](https://prometheus.io/).
- 🦸 Lint everything with [lido linters](https://github.com/lidofinance/linters).

<!--  DELETE THE LINES ABOVE THIS AND WRITE YOUR PROJECT README BELOW -->

---
# <img src="https://docs.lido.fi/img/logo.svg" alt="Lido" width="46"/> My Project

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Myproject is a base template for all python project with pre-installed packages that are common for Lido's codebase.

## How to install

1. `poetry install` - to install dep

## Usage

```py
from myproject import BaseClass
from myproject import base_function

BaseClass().base_method()
base_function()
```

```bash
$ python -m myproject

Hello world!
```

## Release flow

To create new release:

1. Merge all changes to the `main` branch
1. Navigate to Repo => Actions
1. Run action "Prepare release" action against `main` branch
1. When action execution is finished, navigate to Repo => Pull requests
1. Find pull request named "chore(release): X.X.X" review and merge it with "Rebase and merge" (or "Squash and merge")
1. After merge release action will be triggered automatically
1. Navigate to Repo => Actions and see last actions logs for further details 
