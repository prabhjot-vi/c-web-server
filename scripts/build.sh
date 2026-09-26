#!/usr/bin/env bash

build_dir="build"

if [[ ! -d "$build_dir" ]]; then
    mkdir -p "$build_dir"
fi

gcc -g -std=c11 -Wall -Werror -fsanitize=address -o "$build_dir"/server main.c