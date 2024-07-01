#!/bin/bash

cd "$(dirname "$0")"
source ./scripts/common

set -ex

conky -q -c ./widgets/np.lua -d &>/dev/null
conky -q -c ./widgets/npart.lua -d &> /dev/null
