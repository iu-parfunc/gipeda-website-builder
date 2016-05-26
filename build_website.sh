#!/bin/bash

# Build a gipeda website. Responds to these environment variables:
#  SOURCE_REPO - the project git repo 
#  RESULTS_REPO - the git repo that contains CSV benchmark data

set -xe

# Master as of [2016.05.25]
SHA=f4cc848e9a1789ccedcd8170db2f3b4b71d8a1e7
VER=0.1

if false; then 
  wget https://github.com/iu-parfunc/gipeda/archive/$SHA.tar.gz
  tar xf $SHA.tar.gz
  docker build -t parfunc/gipeda:$VER gipeda-$SHA/
else
 # Assume parfunc/gipeda:$VER exists on dockerhub.
fi

