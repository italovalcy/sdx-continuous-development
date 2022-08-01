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
multipass exec sdx -- bash -c "pip3 install attrs==21.4.0"
multipass exec sdx -- bash -c "pip3 install backcall==0.1.0"
multipass exec sdx -- bash -c "pip3 install boltons==21.0.0"
multipass exec sdx -- bash -c "pip3 install certifi==2021.10.8"
multipass exec sdx -- bash -c "pip3 install click==7.1.1"
multipass exec sdx -- bash -c "pip3 install coverage== 6.4.2"
multipass exec sdx -- bash -c "pip3 install charset-normalizer==2.0.10"
multipass exec sdx -- bash -c "pip3 install decorator==4.4.2"
multipass exec sdx -- bash -c "pip3 install dictpath==0.1.3"
multipass exec sdx -- bash -c "pip3 install dnspython== 2.2.1"
multipass exec sdx -- bash -c "pip3 install docopt==0.6.2"
multipass exec sdx -- bash -c "pip3 install docutils==0.18.1"
multipass exec sdx -- bash -c "pip3 install etcd3==0.12.0"
multipass exec sdx -- bash -c "pip3 install face==20.1.1"
multipass exec sdx -- bash -c "pip3 install filelock==3.0.12"
multipass exec sdx -- bash -c "pip3 install flake8==4.0.1"
multipass exec sdx -- bash -c "pip3 install flask-cors==3.0.8"
multipass exec sdx -- bash -c "pip3 install flask-socketio==4.2.1"
multipass exec sdx -- bash -c "pip3 install flask==1.1.2"
multipass exec sdx -- bash -c "pip3 install flask-restx==0.5.1"
multipass exec sdx -- bash -c "pip3 install flask-restful==0.3.7"
multipass exec sdx -- bash -c "pip3 install gevent==21.12.0"
multipass exec sdx -- bash -c "pip3 install gevent-websocket==0.10.1"
multipass exec sdx -- bash -c "pip3 install gitdb==4.0.9"
multipass exec sdx -- bash -c "pip3 install gitpython==3.1.27"
multipass exec sdx -- bash -c "pip3 install glom==20.11.0"
multipass exec sdx -- bash -c "pip3 install greenlet==1.1.2"
multipass exec sdx -- bash -c "pip3 install gunicorn==20.1.0"
multipass exec sdx -- bash -c "pip3 install idna==3.3"
multipass exec sdx -- bash -c "pip3 install importlib-metadata==4.8.3"
multipass exec sdx -- bash -c "pip3 install inflection==0.5.1"
multipass exec sdx -- bash -c "pip3 install iniconfig==1.1.1"
multipass exec sdx -- bash -c "pip3 install ipython-genutils==0.2.0"
multipass exec sdx -- bash -c "pip3 install ipython==7.13.0"
multipass exec sdx -- bash -c "pip3 install isodate==0.6.1"
multipass exec sdx -- bash -c "pip3 install isort==4.3.4"
multipass exec sdx -- bash -c "pip3 install itsdangerous==1.1.0"
multipass exec sdx -- bash -c "pip3 install janus==0.4.0"
multipass exec sdx -- bash -c "pip3 install jedi==0.16.0"
multipass exec sdx -- bash -c "pip3 install Jinja2==2.11.1"
multipass exec sdx -- bash -c "pip3 install jsonschema==3.2.0"
multipass exec sdx -- bash -c "pip3 install lazy-object-proxy==1.7.1"
multipass exec sdx -- bash -c "pip3 install lockfile==0.12.2"
multipass exec sdx -- bash -c "pip3 install markupsafe==1.1.1"
multipass exec sdx -- bash -c "pip3 install more-itertools==8.12.0"
multipass exec sdx -- bash -c "pip3 install numpy==1.22.2"
multipass exec sdx -- bash -c "pip3 install openapi-core==0.14.2"
multipass exec sdx -- bash -c "pip3 install openapi-schema-validator==0.1.6"
multipass exec sdx -- bash -c "pip3 install openapi-spec-validator==0.3.1"
multipass exec sdx -- bash -c "pip3 install packaging==21.3"
multipass exec sdx -- bash -c "pip3 install pandas==1.4.1"
multipass exec sdx -- bash -c "pip3 install parse==1.19.0"
multipass exec sdx -- bash -c "pip3 install parso==0.6.2"
multipass exec sdx -- bash -c "pip3 install pathspec==0.9.0"
multipass exec sdx -- bash -c "pip3 install pathtools==0.1.2"
multipass exec sdx -- bash -c "pip3 install pexpect==4.8.0"
multipass exec sdx -- bash -c "pip3 install pickleshare==0.7.5"
multipass exec sdx -- bash -c "pip3 install pip-tools==6.4.0"
multipass exec sdx -- bash -c "pip3 install platformdirs==2.5.1"
multipass exec sdx -- bash -c "pip3 install pluggy==1.0.0"
multipass exec sdx -- bash -c "pip3 install prompt-toolkit==3.0.5"
multipass exec sdx -- bash -c "pip3 install protobuf==3.19.1"
multipass exec sdx -- bash -c "pip3 install ptyprocess==0.6.0"
multipass exec sdx -- bash -c "pip3 install py==1.11.0"
multipass exec sdx -- bash -c "pip3 install pycodestyle==2.8.0"
multipass exec sdx -- bash -c "pip3 install pydantic==1.9.0"
multipass exec sdx -- bash -c "pip3 install pyflakes==2.4.0"
multipass exec sdx -- bash -c "pip3 install pygments==2.11.2"
multipass exec sdx -- bash -c "pip3 install pyjwt==1.7.1"
multipass exec sdx -- bash -c "pip3 install pylint==2.12.2"
multipass exec sdx -- bash -c "pip3 install pymongo==4.1.0"
multipass exec sdx -- bash -c "pip3 install pyparsing==3.0.7"
multipass exec sdx -- bash -c "pip3 install pyrsistent==0.18.0"
multipass exec sdx -- bash -c "pip3 install pytest==6.2.5"
multipass exec sdx -- bash -c "pip3 install pytest-cov==3.0.0"
multipass exec sdx -- bash -c "pip3 install pytest-flask==1.2.0"
multipass exec sdx -- bash -c "pip3 install pytest-mock==3.7.0"
multipass exec sdx -- bash -c "pip3 install python-daemon==2.2.4"
multipass exec sdx -- bash -c "pip3 install python-dateutil==2.8.2"
multipass exec sdx -- bash -c "pip3 install python-engineio==3.12.1"
multipass exec sdx -- bash -c "pip3 install python-socketio==4.5.1"
multipass exec sdx -- bash -c "pip3 install pytz==2021.3"
multipass exec sdx -- bash -c "pip3 install pyyaml==6.0"
multipass exec sdx -- bash -c "pip3 install regex==2022.1.18"
multipass exec sdx -- bash -c "pip3 install requests==2.27.0"
multipass exec sdx -- bash -c "pip3 install requests-mock==1.9.3"
multipass exec sdx -- bash -c "pip3 install ruamel.yaml==0.17.19"
multipass exec sdx -- bash -c "pip3 install semantic-version==2.8.5"
multipass exec sdx -- bash -c "pip3 install setuptools==58.1.0"
multipass exec sdx -- bash -c "pip3 install swagger-ui-bundle==0.0.9"
multipass exec sdx -- bash -c "pip3 install tenacity==8.0.1"
multipass exec sdx -- bash -c "pip3 install toml==0.10.2"
multipass exec sdx -- bash -c "pip3 install tomli==1.2.1"
multipass exec sdx -- bash -c "pip3 install tox== 3.24.4"
multipass exec sdx -- bash -c "pip3 install traitlets==4.3.3"
multipass exec sdx -- bash -c "pip3 install typing-extensions==4.0.1"
multipass exec sdx -- bash -c "pip3 install tzlocal==2.1"
multipass exec sdx -- bash -c "pip3 install urllib3==1.26.7"
multipass exec sdx -- bash -c "pip3 install watchdog==0.10.2"
multipass exec sdx -- bash -c "pip3 install wcwidth==0.1.9"
multipass exec sdx -- bash -c "pip3 install werkzeug==1.0.1"
multipass exec sdx -- bash -c "pip3 install wrapt==1.13.3"
multipass exec sdx -- bash -c "pip3 install yala==2.2.0"
multipass exec sdx -- bash -c "pip3 install zipp==3.6.0"
multipass exec sdx -- bash -c "pip3 install zope.event==4.5.0"
multipass exec sdx -- bash -c "pip3 install zope.interface==5.4.0"
echo "### set mininet ###"
multipass exec sdx -- bash -c "sudo mn --version"
multipass exec sdx -- bash -c "sudo mn --switch ovsbr --test pingall"
multipass exec sdx -- bash -c "echo 'deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /' | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
multipass exec sdx -- bash -c "curl -L 'https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/Release.key' | sudo apt-key add -"
multipass exec sdx -- bash -c "sudo bash -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'"
echo "### set kytos & napps ###"
multipass exec sdx -- bash -c "sudo mkdir /var/lib/kytos"
multipass exec sdx -- bash -c "sudo mkdir /var/run/kytos"
multipass exec sdx -- bash -c "sudo mkdir /var/tmp/kytos"
multipass exec sdx -- bash -c "sudo mkdir /etc/kytos"
multipass exec sdx -- bash -c "sudo mkdir -p /usr/src/kytos"
multipass exec sdx -- bash -c "sudo chown ubuntu:ubuntu /usr/src/kytos"
multipass exec sdx -- bash -c "cd /usr/src/kytos && git clone https://github.com/kytos-ng/python-openflow"
multipass exec sdx -- bash -c "cd /usr/src/kytos && git clone https://github.com/kytos-ng/kytos-utils"
multipass exec sdx -- bash -c "cd /usr/src/kytos && git clone https://github.com/kytos-ng/kytos"
multipass exec sdx -- bash -c "cd /usr/src/kytos && git clone https://github.com/kytos-ng/flow_manager"
multipass exec sdx -- bash -c "cd /usr/src/kytos && git clone https://github.com/kytos-ng/mef_eline"
multipass exec sdx -- bash -c "cd /usr/src/kytos && git clone https://github.com/kytos-ng/of_core"
multipass exec sdx -- bash -c "cd /usr/src/kytos && git clone https://github.com/kytos-ng/of_lldp"
multipass exec sdx -- bash -c "cd /usr/src/kytos && git clone https://github.com/kytos-ng/pathfinder"
multipass exec sdx -- bash -c "cd /usr/src/kytos && git clone https://github.com/kytos-ng/topology"
multipass exec sdx -- bash -c "cd /usr/src/kytos && git clone https://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@github.com/atlanticwave-sdx/kytos-sdx-topology sdx_topology"
