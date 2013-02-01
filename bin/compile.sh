#!/usr/bin/env bash
# bin/compile <build-dir> <cache-dir>
set -e

BUILD_DIR=$1
CACHE_DIR=$2

LP_DIR=`cd $(dirname $0); cd ..; pwd`
cd $BUILD_DIR

file1="Makefile"
file2="makefile"

if [ -f $file1 ]
then
	echo "-----> Makefile found"
elif [ -f $file2 ] 
then
	echo "-----> makefile found"
else
	echo "-----> No Makefile found.Compilation cannot continue."    
	exit 1;
fi

make

echo "-----> Compilation done"