#!/bin/sh -x

set -x && mkdir -p /opt/render/project/src/app && cp billchurch-webssh2/app/config.json.sample /opt/render/project/src/app/config.json && cp billchurch-webssh2/app/config.json.sample /opt/render/project/src/billchurch-webssh2/app/config.json && cd billchurch-webssh2/app && npm start &

cd .. && cd ./ssh2-git && mkdir -p ~/.ssh && echo | ssh-keygen -f ~/.ssh/foo && cp ~/.ssh/foo ./host.key && npm i ssh2 && npm install && cp ~/.ssh/foo.pub . && node ssh2-server.js

