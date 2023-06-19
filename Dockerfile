FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y \
    python3-pip \
    python3-dev \
    unzip

RUN pip3 install ansible

WORKDIR /ansible

ADD . /ansible

RUN ansible-playbook -vvv ansible.yml

CMD tail -f /dev/null

