#!/bin/bash

#build the required nodes
echo "Build Base Container"
sudo docker build --no-cache -t chapeter/base base
echo "Building App Container"
sudo docker build --no-cache -t chapeter/app app
echo "Building Snapback container"
sudo docker build --no-cache --tag chapeter/snapback snap
echo "Building DB container"
sudo docker build --no-cache --tag chapeter/db db
echo "Building Web Container"
sudo docker build --no-cache -t chapeter/web web
echo "Building Viz Container"
sudo docker build --no-cache -t chapeter/viz viz
echo "build confexplorer"
sudo docker build --no-cache -t chapeter/confexplorer confexplorer
#Upload containers to docker hub
echo "Uploading snapback"
sudo docker push chapeter/snapback
sleep 1
echo "Uploading db"
sudo docker push chapeter/db
sleep 1
echo "Uploading app"
sudo docker push chapeter/app
sleep 1
echo "Uploading web"
sudo docker push chapeter/web
sleep 1
echo "Uploading viz"
sudo docker push chapeter/viz
sleep 1
echo "upload confexplorer"
sudo docker push chapeter/confexplorer
sleep 1
echo "upload base"
sudo docker push chapeter/base
