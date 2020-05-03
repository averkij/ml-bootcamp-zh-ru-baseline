FROM ubuntu:16.04

#dealing with SSL
RUN apt-get update && apt-get install -y --no-install-recommends software-properties-common

#getting git
RUN apt-get update && apt-get install -y --no-install-recommends git

#install required tools
RUN apt-get install -y --no-install-recommends curl

#add repo to install python
RUN add-apt-repository ppa:deadsnakes/ppa -y && apt-get update

#intall python
RUN apt-get install -y --no-install-recommends python3.6-dev && ln -s -f /usr/bin/python3.6 /usr/bin/python;

#install pip
RUN cd /tmp && curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py 'pip<=18.1' && rm get-pip.py

#getting package to run setup.py
RUN pip install --no-cache-dir setuptools

#clone OpenNMT-py project
RUN git clone https://github.com/OpenNMT/OpenNMT-py.git && cd OpenNMT-py

#install
RUN python /OpenNMT-py/setup.py install

#copy input files: bash, vocabulary and weights
COPY run.sh .
COPY src.code .
COPY ondatr-trans_step_20000.pt .

#make output folder
RUN mkdir -p /opt/results/

#bash to run after container start
ENTRYPOINT ["bash", "run.sh"]