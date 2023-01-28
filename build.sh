#!/bin/sh -x

set -x && cd ssh2-git && npm install && cd .. && cd billchurch-webssh2/app && npm install --production
