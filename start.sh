#!/bin/bash

cd "$(dirname "$0")"
source ./scripts/common

set -ex

conky -q -c ./conky/np.lua -d &>/dev/null
conky -q -c ./conky/npart.lua -d &> /dev/null
