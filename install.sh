#!/bin/bash

apt update && apt install wget gnupg gnupg2 gnupg1 -y -q
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
apt update && apt install google-chrome-stable -y -q
apt remove wget gnupg gnupg2 gnupg1 -y -q
apt clean
