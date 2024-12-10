#!/usr/bin/env bash

home_dir="~/.config/home-manager"
command="$home_dir/combine $*"
$command
echo "Combined flakes $*"