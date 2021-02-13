#!/bin/bash


exit_1() {
    echo " GO TEST $* FAILED "
    exit 1
}

run_tests() {
    declare -A TEST_DIRS 
    TEST_DIRS=$(for i in $(dirname $(find . -name \*test\*) | sort | uniq); do echo $i;done)
    echo $TEST_DIRS

    ## tests here
    for test in ${TEST_DIRS[@]}; do 
        echo " ----- RUNNING TEST : $test ----- "
        go test -v ./$test;
        [[ $? == 0 ]] || exit_1 $test
    done;
}

run_mains() {
    for main in $(ls $GOBIN); 
    do 
      echo " ------ RUNNING MAIN : $main ----- "
      $main
    done;
}
cat *.log
run_tests
run_mains
bash




