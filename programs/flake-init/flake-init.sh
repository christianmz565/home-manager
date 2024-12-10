#!/usr/bin/env bash

program_dir="$HOME/.config/home-manager/programs/flake-init"
command="$program_dir/combine $*"
echo $command
$command
echo "Combined flakes $*"