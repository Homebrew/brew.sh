#!/bin/bash
if ! install_script="$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; then
  exit 1
fi
exec /bin/bash -c "$install_script"
