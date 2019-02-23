#! /bin/bash

NUM=$(nvidia-smi | grep python | wc -l)
echo "GPU has $NUM jobs running"
