#!/bin/bash
set -e

if [ ! -d "/app/build" ]; then
  npm install
  npm run build
else
  echo "Build already exists, skipping."
fi


echo "Docusaurus build completed."
