#!/bin/bash

SCRIPT_DIR=$(dirname -- "${0}")
ABS_SCRIPT_DIR=$(realpath "${SCRIPT_DIR}")
ROOT_DIR=$(dirname -- "${ABS_SCRIPT_DIR}")

LINE="source ${ROOT_DIR}/files/.bashrc"
FILE="${HOME}/.bashrc"

grep -qxF "${LINE}" "${FILE}" || echo "${LINE}" >> "${FILE}"
