#!/bin/bash
exit_1() { 
    echo " GO TEST FAILED "
    exit 1 
}
go test -v ./greetings
[[ $? == 0 ]] || exit_1

hello