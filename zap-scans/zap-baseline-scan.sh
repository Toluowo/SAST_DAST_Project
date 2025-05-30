#!/bin/bash
TARGET_URL=$1
REPORT_FILE=$2

docker run -v /home/cyknight/Desktop/zap-scans:/zap/wrk/:rw -t ghcr.io/zaproxy/zaproxy:stable   zap-baseline.py -t $TARGET_URL -g gen.conf -r $REPORT_FILE
