#!/bin/bash

SCRIPT_LOC=$1
SCRIPT_NAME=$2
OUTPUT_NAME=$3
OUTPUT_LOC=$4


aws s3 cp $SCRIPT_LOC $SCRIPT_NAME

shift
shift
shift
shift

python ./$SCRIPT_NAME $*

aws s3 cp $OUTPUT_NAME $OUTPUT_LOC

