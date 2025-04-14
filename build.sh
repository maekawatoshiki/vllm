#!/bin/bash -eux

echo "Building for CPU"

if [ ! -d "env" ]; then
    python3 -m venv env
    pip install -r requirements/cpu.txt
    source env/bin/activate
else
    source env/bin/activate
fi

pip install -U pip
pip install -e . -vvv

