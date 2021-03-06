#!/bin/bash

export DEBUGGING=false
if [ "${DEBUGGING}" = "true" ]; then
	set -o xtrace
fi

set -o errexit
set -o nounset
set -o pipefail

IMAGE="jusito/docker-vsftpd-alpine"

bash test/testStyle.sh
bash test/testBuild.sh
bash test/testRun.sh
#bash test/testHealth.sh
