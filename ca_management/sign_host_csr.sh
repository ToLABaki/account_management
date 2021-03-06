#!/bin/bash

SCRIPT=$(readlink -f $0)
SCRIPT_PATH=`dirname $SCRIPT`
source ${SCRIPT_PATH}/ca_functions.sh
source ${SCRIPT_PATH}/config.sh

# Input: ${1} -> hostname

ca_sign_host_csr ${1}
ssh_ca_gen_host_cert ${1}
