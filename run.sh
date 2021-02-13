#!/bin/bash


build() {
  ./build.sh
  if [[ $? != 0 ]]; then
    echo "BUILD FAILED"
    exit 1
  fi
}
    
run() {
  docker run -it --rm --name hello-app hello
}

main() {
  local OPTIND opt b 
  while getopts ":b" opt;
  do
    case $opt in
      b)
        build
        ;;
    
    esac;
  done;
  run;
}
main ${@};
