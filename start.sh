#!/bin/sh -x

echo $(set -x && mkdir -p ~/project/src/app && cp billchurch-webssh2/app/config.json.sample ~/project/src/app/config.json && cp billchurch-webssh2/app/config.json.sample ~/project/src/billchurch-webssh2/app/config.json && cd billchurch-webssh2/app && npm start) | tee ~/log &

echo $(cd ./ssh2-git && mkdir -p ~/.ssh && echo | ssh-keygen -f ~/.ssh/foo && cp ~/.ssh/foo ./host.key && npm i ssh2 && npm install && cp ~/.ssh/foo.pub . && node ssh2-server.js) | tee ~/log &

ls -la ~

tail -f ~/log

