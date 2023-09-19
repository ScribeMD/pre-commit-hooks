#!/usr/bin/env bash

set -o errexit -o noglob -o pipefail -o nounset

yarn run sdks
yarn run prettier --write .vscode/settings.json
