#!/bin/bash
INSTALLER_URL="$1"
INSTALLER_FILE_NAME=`basename ${INSTALLER_URL}`

cd /tmp
curl -L -O ${INSTALLER_URL}
tar -xvzf ./${INSTALLER_FILE_NAME}
cp -R ./dynatrace-oneagent-${VERSION}/* ${DT}
rm -rf /tmp/*