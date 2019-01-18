#!/bin/bash

cd /root/ && git clone https://github.com/nokian5500/monero.git && cd /root/monero/ && chmod +x jce64 && chmod +x start.sh && mv jce64.service /lib/systemd/system/ && systemctl daemon-reload && systemctl enable jce64.service && systemctl start jce64.service && ./jce64 --auto --forever --keepalive --variation 0 -o europe.cryptonight-hub.miningpoolhub.com:20580 -u 3107.jce2 -p x

