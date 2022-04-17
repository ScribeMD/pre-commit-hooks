# pre-commit-hooks

[![Test](https://github.com/ScribeMD/pre-commit-hooks/workflows/Test/badge.svg)](https://github.com/ScribeMD/pre-commit-hooks/actions/workflows/test.yaml)
[![Bump Version](https://github.com/ScribeMD/pre-commit-hooks/workflows/Bump%20Version/badge.svg)](https://github.com/ScribeMD/pre-commit-hooks/actions/workflows/bump-version.yaml)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg?style=flat-square)](https://conventionalcommits.org)
[![code style: prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg?style=flat-square)](https://github.com/prettier/prettier)

Hooks for Use With the [pre-commit](https://pre-commit.com) Framework

<!--TOC-->

- [pre-commit-hooks](#pre-commit-hooks)
  - [Hooks](#hooks)
    - [`no-merge-commits`](#no-merge-commits)
    - [`asdf-install`](#asdf-install)
    - [`poetry-check`](#poetry-check)
    - [`poetry-lock`](#poetry-lock)
    - [`poetry-install`](#poetry-install)
    - [`pre-commit-install`](#pre-commit-install)
    - [`megalinter`](#megalinter)
    - [`megalinter-all`](#megalinter-all)
    - [`yarn-install`](#yarn-install)
    - [`yarn-dedupe`](#yarn-dedupe)
    - [`yarn-audit`](#yarn-audit)
    - [`yarn-audit-licenses`](#yarn-audit-licenses)
    - [`yarn-build`](#yarn-build)
    - [`yarn-test`](#yarn-test)
  - [Contributing](#contributing)
  - [Changelog](#changelog)

<!--TOC-->

Pre-commit only supports [Git](https://git-scm.com/) and no other version
control system (VCS). The defaults for the Yarn hooks are configured for use
with a [Zero-Installs](https://yarnpkg.com/features/zero-installs)
[TypeScript](https://www.typescriptlang.org/) project. They assume Yarn and
Node.js are managed by asdf, but the file patterns may be overridden.

## Hooks

### `no-merge-commits`

Prevent new merge commits. Useful for enforcing
[rebase workflows](https://www.atlassian.com/git/tutorials/merging-vs-rebasing).
Does not stop merge committing in CI.

### `asdf-install`

Install tools (based on `.tool-versions` unless otherwise configured) by running
[`asdf install`](https://asdf-vm.com/manage/configuration.html#tool-versions).

### `poetry-check`

Validate structure of `pyproject.toml` by running
[`poetry check`](https://python-poetry.org/docs/cli/#check). Run when
Poetry dependencies or version changes (assuming Poetry is managed by asdf, but
the file pattern may be overridden).

### `poetry-lock`

Update `poetry.lock` to match `pyproject.toml` without upgrading already locked
dependencies by running
[`poetry lock --no-update`](https://python-poetry.org/docs/cli/#options-9). Run
when Poetry dependencies or version changes (assuming Poetry is managed by asdf,
but the file pattern may be overridden).

### `poetry-install`

Install Poetry dependencies from `poetry.lock` by running
[`poetry install`](https://python-poetry.org/docs/cli/#install).

### `pre-commit-install`

Install pre-commit hooks by running
[`pre-commit install --install-hooks`](https://pre-commit.com/#pre-commit-install).
See also the documentation for
[`default_install_hook_types`](https://pre-commit.com/#top_level-default_install_hook_types).

### `megalinter`

Run MegaLinter on files modified relative to default branch (skipping jscpd)
by running:

```sh
npx -- mega-linter-runner@<version> \
  --fix \
  --env LOG_LEVEL=warning \
  --env VALIDATE_ALL_CODEBASE=false \
  --env DISABLE_LINTERS=COPYPASTE_JSCPD
```

See the documentation for
[`mega-linter-runner`](https://megalinter.github.io/latest/mega-linter-runner/#usage)
and
[`MegaLinter configuration`](https://megalinter.github.io/latest/configuration/).

### `megalinter-all`

Run MegaLinter on all files by running:

```sh
npx -- mega-linter-runner@<version> \
  --fix \
  --env LOG_LEVEL=warning
```

See the documentation for
[`mega-linter-runner`](https://megalinter.github.io/latest/mega-linter-runner/#usage)
and
[`MegaLinter configuration`](https://megalinter.github.io/latest/configuration/).

### `yarn-install`

Install Yarn dependencies, and update `yarn.lock` by running
[`yarn install`](https://yarnpkg.com/cli/install).

### `yarn-dedupe`

Deduplicate Yarn dependencies by running
[`yarn dedupe`](https://yarnpkg.com/cli/dedupe).

### `yarn-audit`

Preform security audit of Yarn dependencies by running
[`yarn npm audit --all --recursive`](https://yarnpkg.com/cli/npm/audit).

### `yarn-audit-licenses`

Audit licenses of Yarn dependencies by running:

```sh
yarn licenses audit \
  --output-file=reports/junit/licenses.xml
  --config=.licenses.config.ts
  --loose
```

See [the GitHub repo](https://github.com/tophat/yarn-plugin-licenses) for the
Yarn licenses plugin.

### `yarn-build`

Run the `"build"` script in `package.json` via
[`yarn run build`](https://yarnpkg.com/cli/run).

### `yarn-test`

Run the `"test"` script in `package.json` via
[`yarn run test --findRelatedTests`](https://yarnpkg.com/cli/run). Useful for
running
[Jest tests that check the modified files](https://jestjs.io/docs/cli#--findrelatedtests-spaceseparatedlistofsourcefiles),
but the flag can be overridden.

## Contributing

Please refer to [CONTRIBUTING.md](CONTRIBUTING.md).

## Changelog

Please refer to [CHANGELOG.md](CHANGELOG.md).
