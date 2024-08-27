#!/bin/sh

ollama serve & 
sleep 5

cd /root/models/seallms-v3-1.5b-chat-gguf
ollama create seallms-v3-1.5b-chat -f Modelfile
cd /root/models/multilingual-e5-large-instruct-gguf
ollama create multilingual-e5-large-instruct -f Modelfile

cd /root/
rm -rf models/
 
