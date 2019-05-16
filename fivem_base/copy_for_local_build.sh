#!/bin/bash
curl -O http://updater.fivereborn.com/client/cfx-server.7z
mkdir fivem-server && 7za x cfx-server.7z && mv cfx-server/* fivem-server && rm cfx-server.7z && rm -rf cfx-server

cp -r server-config/* fivem-server/
cp -r resources/* fivem-server/resources