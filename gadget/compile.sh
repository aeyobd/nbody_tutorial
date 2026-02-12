#!/bin/bash
#This file compiles a gadget script. The input is a Config{Name}.sh where the {Name} is appended to 
#The build directories and the Gadget executable
#For example, running compile.sh Config.sh
#will create a gadget executable in this directory named Gadget and use a build directory
#./build_

if [ $# -ne 1 ]; then
    echo "usage: $0 <config_name>"
    exit 1
fi

paramname=$1
prefix="Config"
suffix=".sh"
name=${paramname#"$prefix"}
name=${name%"$suffix"}

GADGET_SOURCE=./gadget4
# clean executable if exists
rm -f "Gadget$name"

SCRIPT_DIR=$(pwd)
cd $GADGET_SOURCE || exit

make CONFIG=$SCRIPT_DIR/$paramname BUILD_DIR="$SCRIPT_DIR/build_$name" EXEC="$SCRIPT_DIR/Gadget$name"
