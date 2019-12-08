#!/bin/bash

RED="\e[91m"
GRN="\e[32m"
YLW="\e[93m"
NC="\e[m"

dir=./testFiles

# Usage: runGoodTest <description> <test number>
function runTest {
    echo -e "${YLW}Assembling test $2...${NC}"
    $dir/assembler.linux $dir/$2.asm $dir/$2.obj
    code=$?
    if [ $code != 0 ]; then
        echo -e "${RED}ASSEMBLY PROCESS FAILED${NC}"
        exit 1
    fi
    echo -e "${YLW}Running test $2...${NC}"
    echo "Output for test $2: $1" > $dir/$2.out
    echo -e "Assembly:\n" >> $dir/$2.out
    cat $dir/$2.asm >> $dir/$2.out
    echo -e "\nSTART SIMULATOR OUTPUT\n" >> $dir/$2.out
    ./simulate.exe ucode $dir/$2.obj < $dir/$2.in >> $dir/$2.out
    code=$?
    if [ $code != 0 ]; then
        echo -e "${RED}SIMULATION PROCESS FAILED${NC}"
        exit 1
    fi
    echo -e "${GRN}Done test $2${NC}"
    echo
}

make
echo
runTest "Basic" 0
runTest "Add" 1
runTest "Load" 2
runTest "Branch" 3
runTest "ldb" 4
runTest "jsr" 5
runTest "jsrr" 6
runTest "stw" 7
runTest "jmp" 8
runTest "jmp2" 9

runTest "All add" 101
runTest "ldb" 102
runTest "ldw, stw, stb" 103
runTest "jsr, jsrr" 104
runTest "and, xor" 105
runTest "jmp" 106
runTest "br" 107
runTest "shf" 108
