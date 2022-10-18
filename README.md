# pre-commit-hooks

[![Git Hooks](https://img.shields.io/badge/Git-Template_Repo-9191E9?logo=git&logoColor=F05032&labelColor=343B42)](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)
[![Test Workflow Status](https://github.com/ScribeMD/pre-commit-hooks/workflows/Test/badge.svg)](https://github.com/ScribeMD/pre-commit-hooks/actions/workflows/test.yaml)
[![Copy/Paste: 0%](https://img.shields.io/badge/Copy%2FPaste-0%25-B200B2?logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij48cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjAyNCAzLjc1YzAtLjk2Ni43ODQtMS43NSAxLjc1LTEuNzVIMjAuMjVjLjk2NiAwIDEuNzUuNzg0IDEuNzUgMS43NXYxMS40OThhMS43NSAxLjc1IDAgMDEtMS43NSAxLjc1SDguNzc0YTEuNzUgMS43NSAwIDAxLTEuNzUtMS43NVYzLjc1em0xLjc1LS4yNWEuMjUuMjUgMCAwMC0uMjUuMjV2MTEuNDk4YzAgLjEzOS4xMTIuMjUuMjUuMjVIMjAuMjVhLjI1LjI1IDAgMDAuMjUtLjI1VjMuNzVhLjI1LjI1IDAgMDAtLjI1LS4yNUg4Ljc3NHoiLz48cGF0aCBkPSJNMS45OTUgMTAuNzQ5YTEuNzUgMS43NSAwIDAxMS43NS0xLjc1MUg1LjI1YS43NS43NSAwIDExMCAxLjVIMy43NDVhLjI1LjI1IDAgMDAtLjI1LjI1TDMuNSAyMC4yNWMwIC4xMzguMTExLjI1LjI1LjI1aDkuNWEuMjUuMjUgMCAwMC4yNS0uMjV2LTEuNTFhLjc1Ljc1IDAgMTExLjUgMHYxLjUxQTEuNzUgMS43NSAwIDAxMTMuMjUgMjJoLTkuNUExLjc1IDEuNzUgMCAwMTIgMjAuMjVsLS4wMDUtOS41MDF6Ii8+PC9zdmc+&labelColor=343B42)](https://github.com/kucherenko/jscpd)

[![Automated Updates: Dependabot](https://img.shields.io/badge/Dependabot-Automated_Updates-3CBBB1?logo=dependabot&logoColor=025E8C&labelColor=666)](https://github.com/dependabot)
[![Package Management: Poetry](https://img.shields.io/badge/Poetry-Package_Management-06BA63?logo=poetry&logoColor=60A5FA&labelColor=666)](https://python-poetry.org/)
[![Git Hooks: pre-commit](https://img.shields.io/badge/pre--commit-Git_Hooks-04E762?logo=precommit&logoColor=FAB040&labelColor=666)](https://pre-commit.com/)
[![Commit Style: Conventional Commits](https://img.shields.io/badge/Conventional_Commits-Commit_Style-090C9B?logo=conventionalcommits&logoColor=FE5196&labelColor=666)](https://conventionalcommits.org)
[![Releases: Semantic Versioning](https://img.shields.io/badge/SemVer-Releases-08A045?logo=semver&logoColor=3F4551&labelColor=666)](https://semver.org/)
[![Code Style: Prettier](https://img.shields.io/badge/Prettier-Code_Style-000?logo=prettier&logoColor=F7B93E&labelColor=666)](https://prettier.io/)
[![Code Style: EditorConfig](https://img.shields.io/badge/EditorConfig-Code_Style-FF69EB?logo=editorconfig&logoColor=FEFEFE&labelColor=666)](https://editorconfig.org/)
[![Editor: Visual Studio Code](https://img.shields.io/badge/VSCode-Editor-EE8434?logo=visualstudiocode&logoColor=007ACC&labelColor=666)](https://code.visualstudio.com/)

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
    - [`megalinter-incremental`](#megalinter-incremental)
    - [`megalinter-full`](#megalinter-full)
    - [`yarn-install`](#yarn-install)
    - [`yarn-dedupe`](#yarn-dedupe)
    - [`yarn-audit`](#yarn-audit)
    - [`yarn-audit-licenses`](#yarn-audit-licenses)
    - [`yarn-build`](#yarn-build)
    - [`yarn-test`](#yarn-test)
  - [Changelog](#changelog)

<!--TOC-->

Pre-commit only supports [Git](https://git-scm.com/) and no other version
control system (VCS). The defaults for the [Yarn](https://yarnpkg.com/) hooks
are configured for use with a
[Zero-Installs](https://yarnpkg.com/features/zero-installs)
[TypeScript](https://www.typescriptlang.org/) project. They assume Yarn and
[Node.js](https://nodejs.org/) are managed by [asdf](https://asdf-vm.com/), but
the file patterns may be overridden.

## Hooks

### `no-merge-commits`

Prevent new merge commits. Useful for enforcing
[rebase workflows](https://git-scm.com/book/en/v2/Git-Branching-Rebasing).
Does not stop merge committing in CI.

### `asdf-install`

Install tools (based on `.tool-versions` unless otherwise configured) by running
[`asdf install`](https://asdf-vm.com/manage/configuration.html#tool-versions).

### `poetry-check`

Validate structure of `pyproject.toml` by running
[`poetry check`](https://python-poetry.org/docs/cli/#check). Run when
[Poetry](https://python-poetry.org/) dependencies or version changes (assuming
Poetry is managed by asdf, but the file pattern may be overridden).

### `poetry-lock`

Update `poetry.lock` to match `pyproject.toml` without upgrading already locked
dependencies by running
[`poetry lock --no-update`](https://python-poetry.org/docs/cli/#lock). Run when
Poetry dependencies or version changes (assuming Poetry is managed by asdf, but
the file pattern may be overridden).

### `poetry-install`

Install Poetry dependencies from `poetry.lock` by running
[`poetry install --sync`](https://python-poetry.org/docs/cli/#install).
Uninstall any dependencies not found in the lock file. Requires Poetry 1.2+.

### `pre-commit-install`

Install pre-commit hooks by running
[`pre-commit install --install-hooks`](https://pre-commit.com/#pre-commit-install).
See also the documentation for
[`default_install_hook_types`](https://pre-commit.com/#top_level-default_install_hook_types).

### `megalinter-incremental`

This hook is intended for MegaLinter v6. Run [MegaLinter](https://oxsecurity.github.io/megalinter/)
(skipping linters that run in project mode) by running:

```sh
npx -- mega-linter-runner@<version> \
  --container-name megalinter-incremental \
  --remove-container \
  --fix \
  --env LOG_LEVEL=warning \
  --filesonly
```

See the documentation for
[`mega-linter-runner`](https://oxsecurity.github.io/megalinter/latest/mega-linter-runner/#usage)
and
[MegaLinter configuration](https://oxsecurity.github.io/megalinter/latest/configuration/).

### `megalinter-full`

This hook is intended for MegaLinter v6. Run MegaLinter by running:

```sh
npx -- mega-linter-runner@<version> \
  --container-name megalinter-full \
  --remove-container \
  --fix \
  --env LOG_LEVEL=warning \
```

See the documentation for
[`mega-linter-runner`](https://oxsecurity.github.io/megalinter/latest/mega-linter-runner/#usage)
and
[MegaLinter configuration](https://oxsecurity.github.io/megalinter/latest/configuration/).

### `yarn-install`

Install Yarn dependencies, and update `yarn.lock` by running
[`yarn install`](https://yarnpkg.com/cli/install).

### `yarn-dedupe`

Deduplicate Yarn dependencies by running
[`yarn dedupe`](https://yarnpkg.com/cli/dedupe).

### `yarn-audit`

Perform security audit of Yarn dependencies by running
[`yarn npm audit --all --recursive`](https://yarnpkg.com/cli/npm/audit).

### `yarn-audit-licenses`

Audit licenses of Yarn dependencies by running:

```sh
yarn licenses audit \
  --output-file=reports/junit/licenses.xml
  --config=.licenses.config.ts
```

See [the GitHub repo](https://github.com/tophat/yarn-plugin-licenses) for the
Yarn licenses plugin.

### `yarn-build`

Run the `"build"` script in `package.json` via
[`yarn run build`](https://yarnpkg.com/cli/run).

### `yarn-test`

Run the `"test"` script in `package.json` via
[`yarn run test --passWithNoTests --findRelatedTests`](https://yarnpkg.com/cli/run).
Useful for running
[Jest tests that check the modified files](https://jestjs.io/docs/cli#--findrelatedtests-spaceseparatedlistofsourcefiles),
but the flag can be overridden.

## Changelog

Please refer to [`CHANGELOG.md`](CHANGELOG.md).
