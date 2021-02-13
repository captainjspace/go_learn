#!/bin/bash
DATE=$(date +'%Y%m%d%H%M%S')
LOG=builder-${DATE}.log
exec > >( tee -a ${LOG})
exec 2>&1

printf ' ----- RUNNING : %s -----\n' $0

declare -a BUILD_DIRS 
BUILD_DIRS=( $(for i in $(dirname $(find . -name "*.go" -exec grep -q "package main" {} \; -print) | sort | uniq); do echo $i;done) )
echo $BUILD_DIRS

APP=$PWD
for dir in ${BUILD_DIRS[@]}
do
  echo $APP/$dir
  cd $APP/$dir && go get -d -v ./... && go install -v ./... 
done;

