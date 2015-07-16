#!/bin/bash

#Upload containers to docker hub
echo "Uploading snapback"
sudo docker push chapeter/snapback &
sleep 1
echo "Uploading db"
sudo docker push chapeter/db &
sleep 1
echo "Uploading app"
sudo docker push chapeter/app &
sleep 1
echo "Uploading web"
sudo docker push chapeter/web &
sleep 1
echo "Uploading viz"
sudo docker push chapeter/viz &
