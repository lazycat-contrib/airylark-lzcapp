#!/bin/sh
set -a
if [ ! -f /app/data/env.yaml ];then
   cp -f /lzcapp/pkg/content/env.yaml /app/data/env.yaml
fi
echo "apply env setting"
source /app/data/env.yaml
set +a
echo "run server"
node /app/server.js
