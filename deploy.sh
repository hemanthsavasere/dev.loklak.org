#!/bin/bash

echo "Setting up git identity ..."
git config --global user.email "travis@travis-ci.org"
git config --global user.name "travis-ci"

echo "Cloning repository ..."
git clone --branch=gh-pages git@github.com:loklak/dev.loklak.org $HOME/pages
cd $HOME/pages

echo "Pulling subtrees ..."
.ci/pull.sh config.csv
