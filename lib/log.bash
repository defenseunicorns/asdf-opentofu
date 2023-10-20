#!/usr/bin/env bash

# Author credit: https://github.com/rynkowsg/asdf-opentofu/blob/ae591570e5e6d002cbd57cba9acae1b3d13f9f0a/lib/log.bash

DEBUG=${DEBUG:-"false"}

is_debug() {
  if [ "$DEBUG" = "true" ]; then
    return 0
  else
    return 1
  fi
}

log_debug_f() {
  if is_debug; then
    # shellcheck disable=SC2059
    # it is ok to disable warning here because it is a wrapper to printf
    printf >&2 "$@"
  fi
}

log_debug() {
  log_debug_f "%s\n" "$@"
}

log_info_f() {
  # shellcheck disable=SC2059
  # it is ok to disable warning here because it is a wrapper to printf
  printf >&2 "$@"
}

log_info() {
  log_info_f "%s\n" "$@"
}
