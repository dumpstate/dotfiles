#!/usr/bin/env bash

# There is many ways to install dependencies on different
# operating systems. All I need is to check whether the dependency
# is or isn't present.

set -euo pipefail

function main {
  local deps_file="${HOME}/.deps"
  if [[ ! -f "$deps_file" ]]; then
    echo ".deps file does not exist"
    exit 1
  fi

  local missing_count=0

  while IFS="" read -r executable || [ -n "$executable" ]; do
    local name=${executable[0]}
    local path=$(which ${name})

    if [[ ! -f "$path" || ! -x "$path" ]]; then
      echo "Missing executable: $executable"
      missing_count=$((missing_count + 1))
    fi
  done < "$deps_file"

  if [[ "${missing_count}" -ge 1 ]]; then
    exit 1
  fi

  exit 0
}

main "$@"
