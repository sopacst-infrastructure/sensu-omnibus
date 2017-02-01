#!/bin/sh

set -e

[ -d sensu-build ] && cd sensu-build

bundle install --binstubs

git config --global user.email "Barry.O'Rourke@ed.ac.uk"
git config --global user.name "Barry O'Rourke"

/sensu-build/bin/omnibus build sensu

cp /sensu-build/pkg/*.rpm /tmp/assets || true
