#! /bin/bash

if [ ! -f /usr/bin/docker ]; then
        wget https://download.docker.com/linux/static/stable/x86_64/docker-19.03.9.tgz
        tar xzvf docker-19.03.9.tgz && rm docker-19.03.9.tgz
        sudo mv docker/* /usr/local/bin
        rm -r docker/
fi;

sudo mkdir -p /etc/docker/

if [ ! -f /etc/docker/daemon.json ]; then
        sudo touch /etc/docker/daemon.json
fi;

sudo python3 daemon-check.py
sleep 2
sudo dockerd &
sleep 3
sudo chmod 666 /var/run/docker.sock

git clone https://github.com/NVIDIA/nvidia-docker.git
cp -r Makefile nvidia-docker/
cd nvidia-docker
make
cd ..

if [ ! -f /usr/bin/ade ]; then
        wget https://gitlab.com/ApexAI/ade-cli/-/jobs/1341322851/artifacts/raw/dist/ade+x86_64
        mv ade+x86_64 ade
        sudo chmod +x ade
        sudo mv ade /usr/local/bin
fi;
