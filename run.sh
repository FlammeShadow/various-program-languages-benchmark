#!/usr/bin/env bash

rm ./output/*

skip=(
    "./language-environments/javascript/quickjs/flake.nix" 
)

for test in $(find ./language-environments | grep "flake.nix$")
do
    if [[ "${skip[@]}" =~ $test ]]; then continue; fi
    echo $test
    export OUTPUT_PATH="[[DEFAULT]]"
    nix develop $test
done;