#!/bin/bash
# Run a local server with auto-reload feature but without installing anyhting.

git submodule update --init --recursive

# Should not be needed, revealjs comes with everything compiled
#cd revealjs
#npm install

npm install --no-save browser-sync
npx browser-sync start -s -f . --no-notify --port 9000

