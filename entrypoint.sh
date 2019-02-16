#!/bin/bash

export DRONE_TOKEN=${PLUGIN_DRONE_TOKEN}
export DRONE_SERVER=${PLUGIN_DRONE_SERVER}

drone build restart ${PLUGIN_REPOSITORY} $( \
    drone build ls ${PLUGIN_REPOSITORY} \
        --limit=1 \
        --status=success \
        --format="{{ .Number }}" \
        --branch=${PLUGIN_BRANCH})
