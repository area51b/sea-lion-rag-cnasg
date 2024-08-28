#!/bin/sh

ollama serve & 
sleep 5

cd /root/models/llama3-8b-cpt-sea-lionv2.1-instruct-gguf
ollama create llama3-8b-cpt-sea-lionv2.1-instruct -f Modelfile
cd /root/models/multilingual-e5-large-gguf
ollama create multilingual-e5-large -f Modelfile

cd /root/
rm -rf models/
 
