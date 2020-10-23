#!bin/sh
echo "Start npm server...."
cd /proxy && npm install && node main.js $1 $2 $3
