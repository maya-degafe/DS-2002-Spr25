#!/bin/bash

# assign 1st arg, the file name, into var FILE
FILE=$1

# assign 2nd arg, bucket name, into var BUCKET
BUCKET=$2

# assign 3rd arg, exp. time, into var EXP
EXP=$3

# upload file (arg1) into s3 bucket
aws s3 cp "$FILE" "s3://$BUCKET/" --acl private

# temp url w a lifespan = exp
aws s3 presign "s3://$BUCKET/$(basename $FILE)" --expires-in $EXP