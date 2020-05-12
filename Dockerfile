FROM ubuntu:latest
LABEL maintainer="oizone@oizone.net"

#ARG GH_RUNNER_VERSION="2.169.1"
#ARG TARGETPLATFORM

#SHELL ["/bin/bash", "-o", "pipefail", "-c"]
#ENV DEBIAN_FRONTEND=noninteractive
#ENV ANSIBLE_HOST_KEY_CHECKING=False
#ARG APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=yes

#RUN echo deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main | tee -a /etc/apt/sources.list
#RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
#RUN apt-get update
#RUN apt-get install -y --no-install-recommends jq python3-ncclient ansible=2.7.7+dfsg-1
RUN apt-get update

WORKDIR /rfxcmd
COPY * /rfxcmd/

ENTRYPOINT ["/bin/sh"]