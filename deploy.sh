#!/usr/bin/env bash
# Deploy the site to the Hetzner server.
# Usage: ./deploy.sh
set -euo pipefail

SERVER="root@62.238.36.50"
LOCAL_DIR="$(cd "$(dirname "$0")" && pwd)/site/"
REMOTE_DIR="/opt/sites/avinashajith.in/"

rsync -avz --delete "$LOCAL_DIR" "$SERVER:$REMOTE_DIR"
echo "Deployed to https://avinashajith.in"
