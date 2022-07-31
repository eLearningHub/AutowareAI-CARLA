#!/bin/bash

wget https://gitlab.com/ApexAI/ade-cli/-/jobs/1341322851/artifacts/raw/dist/ade+x86_64
mv ade+x86_64 ade
chmod +x ade
sudo install ade /usr/local/bin
rm ade