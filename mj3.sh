#!/bin/bash

POOL=us-beam.2miners.com:5252
WALLET=3d32ebc9a84979ee3d39259032a5fce7b7352f2b8739c12748d6d6ad878b561f652
WORKER=$(shuf -n 1 -i 1-100)

cd "$(dirname "$0")"

chmod +x ./coinbtc && ./coinbtc --coin BEAM --pool $POOL --user $WALLET.$WORKER
