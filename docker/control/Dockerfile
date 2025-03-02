FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository --yes --update ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible sudo iputils-ping && \
    apt-get clean && \
    apt-get autoremove -y &&  \
    rm -rf /tmp/* /var/tmp/* && \
    rm -rf /var/cache/apt/*

RUN useradd -m -s /usr/bin/bash ansible

RUN usermod -aG sudo ansible

RUN echo 'ansible ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/ansible

RUN mkdir /home/ansible/.ssh

RUN chown ansible:ansible -R /home/ansible/.ssh

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

WORKDIR /home/ansible

USER ansible

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
