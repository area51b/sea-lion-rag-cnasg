#!/bin/sh

ollama serve & 
sleep 5

cd /root/models/llama3-8b-cpt-sea-lionv2-instruct-gguf
ollama create llama3-8b-cpt-sea-lionv2-instruct -f Modelfile
cd /root/models/paraphrase-multilingual-MiniLM-L12-v2-gguf
ollama create paraphrase-multilingual-MiniLM-L12-v2 -f Modelfile
cd /root/
rm -rf models/
 
