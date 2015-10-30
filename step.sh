#!/bin/bash

THIS_SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

set -e
set -v

if [ -z "${emulator_name}" ]; then
	printf "\e[31memulator_name was not specified\e[0m\n"
	exit 1
fi

echo "${emulator_name}"

ruby ${THIS_SCRIPTDIR}/emulator.rb
