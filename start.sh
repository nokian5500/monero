#!/bin/sh

# /!\ This is an EXAMPLE of miner start script, replace all EXAMPLE values with yours /!\

# Pool address, can be a name or a dotted IP
# Replace that EXAMPLE value with yours
POOL="europe.cryptonight-hub.miningpoolhub.com"

# Pool port, can be standard or SSL.
# If SSL, see note below.
# Replace that EXAMPLE value with yours
PORT=20580

# If you use a SSL port, change to: set SSL="--ssl"
# Otherwise leave empty
SSL=""

# Your wallet. Some pools let you add extra information at the end like .PAYMENTID or .FIXEDDIFF
# no problem, that's supported.
# Replace that EXAMPLE value with yours
# This is the donation wallet.
WALLET=3107.jce64cOS7

# 'x' almost always works, some pools let you put a Worker name here. Rarely important.
PASSWORD=x

# 0 is "automatic", you can force one of:
# 1 = Original Cryptonight
# 2 = Original Cryptolight
# 3 = Cryptonight V7 fork of April-2018
# 4 = Cryptolight V7 fork of April-2018
# 5 = Cryptonight-Heavy
# 6 = Cryptolight-IPBC (obsolete)
# 7 = Cryptonight-XTL fork of May-2018
# 8 = Cryptonight-Alloy
# 9 = Cryptonight-MKT
#10 = Cryptonight-Arto/Fest
#11 = Cryptonight-Masari/Fast
#12 = Cryptonight-Haven
#13 = Cryptonight-BitTube v2 of July-2018
#14 = Cryptolight-Red
#15 = Cryptonight V8 fork of October-2018
#16 = Pool-selected autoswitch
#17 = Cryptolight-Dark
#18 = Cryptonight-FreeHaven/Swap
#19 = Cryptolight-uPlexa
#20 = Cryptolight-Turtle v2
FORK=0

# All is good! Let's mine
./jce64 --auto --forever --keepalive --variation ${FORK} -o ${POOL}:${PORT} -u ${WALLET} -p ${PASSWORD} ${SSL} $@
