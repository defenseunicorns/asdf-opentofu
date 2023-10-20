#!/usr/bin/env bash

# Author credit: https://github.com/rynkowsg/asdf-opentofu/blob/ae591570e5e6d002cbd57cba9acae1b3d13f9f0a/scripts/format.bash

shfmt --language-dialect bash \
  --indent 2 \
  --case-indent \
  --binary-next-line \
  --write \
  ./**/*

# Options:
# https://github.com/mvdan/sh/blob/master/cmd/shfmt/shfmt.1.scd
