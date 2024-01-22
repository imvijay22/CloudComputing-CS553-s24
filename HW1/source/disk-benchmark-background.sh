#!/bin/bash
dd if=/dev/zero of=output1.txt bs=1M count=2000 conv=fdatasync > disk-benchmark-log.txt 2>&1 &
echo "The dd command is running in the background."
sleep 10
