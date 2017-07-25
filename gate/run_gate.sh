#!/bin/sh

source ../config/ubuntu_env_vars
extra_args="-e @../config/local_vars.yml -e @../config/my_vars.yml"

ansible-playbook ../ansible/setup_gate_environment.yml --extra-vars "${EXTRA_VARS}" ${extra_args} $@
