#!/bin/bash
echo "RUNNING"
declare -A BUILD_DIRS 
BUILD_DIRS=$(for i in $(dirname $(find . -name "*.go" -exec grep -q "package main" {} \; -print) | sort | uniq); do echo $i;done)
echo $BUILD_DIRS

APP=$PWD
for dir in ${BUILD_DIRS[@]}
do
  echo $APP/$dir
  cd $APP/$dir && go get -d -v ./... && go install -v ./... 
done;
