#! /bin/bash
MODULE=${1:-""}
DEST_SERVER=${2:-""}

KEY_PATH=${HOME}/.ssh/${MODULE}

mkdir -P ${KEY_PATH}

ssh-keygen -t ed25519 -f ${KEY_PATH}/key
ssh-copy-id -i key.pub ${DEST_SERVER}
