#!/usr/bin/env bash

# Author credit: https://github.com/rynkowsg/asdf-opentofu/blob/ae591570e5e6d002cbd57cba9acae1b3d13f9f0a/scripts/lint.bash

shellcheck \
  --shell=bash \
  --external-sources \
  bin/* --source-path=template/lib/ \
  lib/* \
  scripts/*

shfmt --language-dialect bash \
  --indent 2 \
  --case-indent \
  --binary-next-line \
  --diff \
  ./**/*
