#!/bin/bash

VENV=venv

if [ ! -d "$VENV" ]; then
  python3 -m venv $VENV
  source $VENV/bin/activate
  pip install --upgrade pip
  pip install python-openstackclient
fi

source $VENV/bin/activate
source openrc.sh
  