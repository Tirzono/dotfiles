#!/bin/bash

SCRIPT_DIR=$(dirname -- "${0}")
ABS_SCRIPT_DIR=$(realpath "${SCRIPT_DIR}")
ROOT_DIR=$(dirname -- "${ABS_SCRIPT_DIR}")

git config --global include.path "${ROOT_DIR}/files/.gitconfig"
