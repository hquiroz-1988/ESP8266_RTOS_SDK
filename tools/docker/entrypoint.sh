#!/usr/bin/env bash
set -e

. $IDF_PATH/export.sh

# add other scripts to run here
. Scripts/build_project.sh

exec "$@"
