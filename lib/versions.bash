#!/usr/bin/env bash

# Author credit: https://github.com/rynkowsg/asdf-opentofu/blob/ae591570e5e6d002cbd57cba9acae1b3d13f9f0a/lib/versions.bash

CURRENT_SCRIPT_PATH=${BASH_SOURCE[0]}
PLUGIN_DIR=$(dirname "$(dirname "${CURRENT_SCRIPT_PATH}")")

# shellcheck source=./lib/common.bash
source "${PLUGIN_DIR}/lib/common.bash" # GH_REPO

sort_versions() {
  sed 'h; s/[+-]/./g; s/.p\([[:digit:]]\)/.z\1/; s/$/.z/; G; s/\n/ /' \
    | LC_ALL=C sort -t. -k 1,1 -k 2,2n -k 3,3n -k 4,4n -k 5,5n | awk '{print $2}'
}

list_github_tags() {
  git ls-remote --tags --refs "${GH_REPO}" \
    | grep -o 'refs/tags/.*' \
    | cut -d/ -f3- \
    | sed 's/^v//'
}

list_all_versions() {
  list_github_tags
}
