#!/bin/bash

set -ex

cd "$(dirname "$0")"

source ./scripts/load-config

conky -q -c ./conky/np.lua -d &>/dev/null
conky -q -c ./conky/npart.lua -d &> /dev/null
