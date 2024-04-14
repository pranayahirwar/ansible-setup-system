FROM ubuntu:latest

# ENV to install everything non-Interactively, otherwise docker build wait for user input.
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /usr/local/bin

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y vim software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    apt-get clean autoclean && \
    apt-get autoremove --yes


WORKDIR /

RUN echo 'alias ap="ansible-playbook"' >> /root/.bashrc

COPY ./playbooks playbook
    