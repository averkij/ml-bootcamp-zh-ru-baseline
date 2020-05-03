# OpenNMT baseline
ML Bootcamp Machine Translation competition (Chinese to Russian).

# Technical part

## How to docker

Dockerfile is an entry point to build container. See comments in Dockerfile to get how the container is preparing.

- docker build . -t baseline

Docker container will be built with all stuff to translate the input (vocabulary to tokenize the input, tool to translate along with the weights).

## How to use

- docker run -v C:/temp/input.txt:/tmp/data/input.txt -v C:/temp/output.txt:/opt/results/output.txt -it baseline:latest

This command will mount the input and output files from your disk to the container folders (volumes) and run the logic in bash script on this files.

## How to submit

To submit your solution (solution here is the container able to get /tmp/data/input.txt and write translation to /opt/data/result.txt) you need to tag your container using tag from the competitions page (unique for every competitior).

- docker tag baseline stor.highloadcup.ru/huawei/china_cat

china_cat is your personal tag from the competitions page.

- docker push stor.highloadcup.ru/huawei/china_cat

(!) After submitting you can find your result on your Profile page on ML Bootcamp.

# Translation ideas

## Datasets

Find or made proper Chinese to Russian datasets.

Consider following resources:

- OPUS Parallel corpus http://opus.nlpl.eu/
- TED talks transcripts parallel corpus https://www.kaggle.com/db189ab19e7dfeda/ted-talks-transcripts-parallel-corpus

Other ideas:

- Fiction
- News

## Preprocessing

- There are no space characters in Chiense texts and if you think about using the special libraries to word tokenizing there is a better way.
- BPE tokenization (already used in container).
- Try WordPiece and SentencePiece tokenization.

## Tuning

- Find the optimal vocabulary size. Bigger is not always better.
- Try simple and transformer models (tutorial is here https://colab.research.google.com/drive/1Nkd9UFlDX4NhX_gVQwDS-77s2jV7zTqE).

## Your model

- I've made my own model with attention and stuff but it not better than OpenNMT (at all). Good luck with that.

