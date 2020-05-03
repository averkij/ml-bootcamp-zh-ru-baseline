# OpenNMT baseline
ML Bootcamp Machine Translation competition (Chinese to Russian).

## How to docker

Dockerfile is an entry point to build container. See comments in Dockerfile to get how the container is preparing.

- docker build . -t baseline

Docker container will be built with all stuff to translate the input (vocabulary to tokenize the input, tool to translate along with the weights).

## How to use

- docker run -v C:/temp/input.txt:/tmp/data/input.txt -v C:/temp/output.txt:/opt/results/output.txt -it baseline:latest

This command will mount the input and output files from your disk to the container folders (volumes) and run the logic in bash script on this files.
