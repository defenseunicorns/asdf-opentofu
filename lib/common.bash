#!/usr/bin/env bash

# Author credit: https://github.com/rynkowsg/asdf-opentofu/blob/ae591570e5e6d002cbd57cba9acae1b3d13f9f0a/lib/common.bash

# shellcheck disable=SC2034
GH_REPO="https://github.com/opentofu/opentofu"
TOOL_NAME="tofu"
TOOL_TEST="tofu --help"

fail() {
  echo -e "asdf-${TOOL_NAME}: $*"
  exit 1
}
