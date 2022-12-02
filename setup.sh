#!/bin/bash

SCRIPT_DIR=$(dirname -- "${0}")
ABS_SCRIPT_DIR=$(realpath "${SCRIPT_DIR}")

TMPDIR=$(mktemp -d)

CURRENT=$PWD

cd $TMPDIR

for script in ${ABS_SCRIPT_DIR}/scripts/*; do
  bash "$script"
done

cd $CURRENT

rm -rf $TMPDIR
