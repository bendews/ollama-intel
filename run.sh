#!/bin/bash
source ipex-llm-init -g --device $DEVICE
# init ollama
mkdir -p /var/ollama
cd /var/ollama
init-ollama
export OLLAMA_NUM_GPU=999
export ZES_ENABLE_SYSMAN=1
# start ollama service
./ollama $1