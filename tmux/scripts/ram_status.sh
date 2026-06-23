#!/usr/bin/env bash

set -euo pipefail

if ! command -v free >/dev/null 2>&1; then
  printf 'MEM n/a'
  exit 0
fi

free -b | awk '
  /^Mem:/ {
    total = $2
    used = $3

    gb = 1024 * 1024 * 1024
    printf "MEM %.0f/%.0fGB", used / gb, total / gb
  }
'
