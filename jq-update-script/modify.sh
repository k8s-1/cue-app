#!/bin/bash

set -eux

NON_JSON=$(sed '/{/Q' dev.cue)
JSON=$(sed -n '/{/,/}/p' dev.cue)
NEW_VERSION="v9.0"

NEW_JSON=$(echo "$JSON" | jq --arg new_version "$NEW_VERSION" '.app1 = $new_version')

{
    echo "$NON_JSON"
    echo "$NEW_JSON"
} > dev.cue
