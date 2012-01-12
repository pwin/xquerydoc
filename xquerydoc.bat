#!/bin/bash

# This script generates one page of html documentation of an xquery module
#
# usage:
#
# > xquerydoc /som/xquery/file.xq /some/output/html.html -f=format
#
#


CURRENTDIR=`pwd`

# create output directory
mkdir -p $2

# get xquerydoc home directory
CMDDIR="$( cd -P "$( dirname "$0" )" && pwd )"
TARGET_FILE=$CMDDIR/xquerydoc
cd `dirname $TARGET_FILE`
TARGET_FILE=`basename $TARGET_FILE`
# Iterate down a (possible) chain of symlinks
while [ -L "$TARGET_FILE" ]
do
    TARGET_FILE=`readlink $TARGET_FILE`
    cd `dirname $TARGET_FILE`
    TARGET_FILE=`basename $TARGET_FILE`
done
# Compute the canonicalized name by finding the physical path 
# for the directory we're in and appending the target file.
PHYS_DIR=`pwd -P`
RESULT=$PHYS_DIR/
XQUERYDOC_HOME=${RESULT/\/bin/}

cd $CURRENTDIR
XQUERY=`cd $1 && pwd`

cd $CURRENTDIR
OUTPUT=`cd $2 && pwd`

FORMAT=$3

cd $CURRENTDIR

# copy lib resources
cp -R -f $XQUERYDOC_HOME/src/lib $OUTPUT/lib

# run xproc pipeline
calabash -oresult=$OUTPUT/index.html $XQUERYDOC_HOME/xquerydoc.xpl xquery=$XQUERY output=$OUTPUT currentdir=$CURRENTDIR format=$FORMAT exclude= include=

exit