#!/usr/bin/env bash

# manual validation of required inputs (https://github.com/actions/runner/issues/1070)

export PORTER_HOST=${INPUT_HOST}
export PORTER_CLUSTER=${INPUT_CLUSTER:?input \"cluster\" not set or empty}
export PORTER_PROJECT=${INPUT_PROJECT:?input \"project\" not set or empty}
export PORTER_TOKEN=${INPUT_TOKEN:?input \"token\" not set or empty}

: "${INPUT_APP:?input \"app\" not set or empty}"
: "${INPUT_TAG:?input \"tag\" not set or empty}"
: "${INPUT_NAMESPACE:?input \"namespace\" not set or empty}"

for i in ${INPUT_BUILD_SECRETS//,/ }
do
    # call your procedure/other scripts here below
    IFS='=' read -ra KV <<< "$i"
    echo ${KV[0]}
    echo ${KV[1]}
    export "PORTERSECRET_${KV[0]}"=${KV[1]}
done

if [[ -z "$INPUT_PATH" ]]; then
  porter update --app "$INPUT_APP" --tag "$INPUT_TAG" --namespace "$INPUT_NAMESPACE" --stream
else
  porter update --app "$INPUT_APP" --tag "$INPUT_TAG" --namespace "$INPUT_NAMESPACE" --path "$INPUT_PATH" --stream
fi
