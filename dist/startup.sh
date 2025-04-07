#!/bin/sh
set -a
chown -R nextjs:nodejs /app/node_modules
if [ ! -f /app/node_modules/data/env.yaml ];then
   cp -f /lzcapp/pkg/content/env.yaml /app/node_modules/data/env.yaml
fi
echo "apply env setting"
source /app/node_modules/data/env.yaml
set +a
echo "run server"
node /app/server.js
