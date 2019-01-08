#!/bin/sh

echo "GET ${URL}" | vegeta attack -duration=0s -connections=${CONNECTIONS} | vegeta report --every ${REPORT_INTERVAL}