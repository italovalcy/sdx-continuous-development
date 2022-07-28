#!/bin/sh
multipass launch 20.04 --name sdx -d 20G -m 8192M -c 2
multipass set client.primary-name=sdx
multipass list
multipass info sdx
echo "### Ubuntu Update ###"
multipass exec sdx sudo apt-get update
multipass exec sdx sudo apt-get upgrade
echo "### dependencies install ###"
multipass exec sdx -- bash -c "apt-get install --assume-yes --no-install-recommends \
                build-essential \
		ca-certificates \
		dirmngr \
		dpkg-dev \
		gcc \
                git \
		gnupg \
                gunicorn \
                iputils-ping \
		libbz2-dev \
		libc6-dev \
		libexpat1-dev \
		libffi-dev \
		liblzma-dev \
                libncurses5-dev \
                libgdbm-dev \
                libnss3-dev \
                libreadline-dev \
		libsqlite3-dev \
		libssl-dev \
                lsof \
		make \
                mininet \
		net-tools \
		netbase \
                netcat \
                software-properties-common \
		uuid-dev \
		wget \
		xz-utils \
		zlib1g-dev"
multipass exec sdx -- bash -c "sudo apt install python3-pip --assume-yes"
multipass exec sdx -- bash -c "sudo apt-get purge --assume-yes --auto-remove -o APT::AutoRemove::RecommendsImportant=false && \
sudo rm -rf /var/lib/apt/lists/*"
multipass exec sdx -- bash -c "pip3 install --upgrade pip"
# multipass exec sdx -- bash -c "pip3 install six==1.16.0"
multipass exec sdx -- bash -c "pip3 install wheel==0.37.0"
multipass exec sdx -- bash -c "pip3 install grpcio==1.41.0"
multipass exec sdx -- bash -c "pip3 install networkx==2.5.1"
multipass exec sdx -- bash -c "pip3 install eventlet==0.33.0"
multipass exec sdx -- bash -c "pip3 install black==20.8b0"
multipass exec sdx -- bash -c "sudo mn --version"
multipass exec sdx -- bash -c "sudo mn --switch ovsbr --test pingall"
multipass exec sdx -- bash -c "echo 'deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /' | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
multipass exec sdx -- bash -c "curl -L 'https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/Release.key' | sudo apt-key add -"
multipass exec sdx -- bash -c "sudo bash -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'"
