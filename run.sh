#!/bin/bash

APIC_IP=10.94.238.68
APIC_USERNAME=admin
APIC_PASSWORD=cisco123

#build the required nodes
#echo "building Snapback container"
#sudo docker build --no-cache --tag chapeter/snapback snap
#echo "Building DB container"
#sudo docker build --no-cache --tag chapeter/db db
#echo "Building App Container"
#sudo docker build --no-cache -t chapeter/app app
#echo "Building Web Container"
#sudo docker build --no-cache -t chapeter/web web
#echo "Building Viz Container"
#sudo docker build --no-cache -t chapeter/viz viz

#launch the db node
echo "********************"
echo "*Launching Database*"
echo "********************"
sudo docker run -d --name db chapeter/db
#wait for the db node to come up so that it can be linked
sleep 20
echo "***************************"
echo "*Launching Endpointtracker*"
echo "***************************"
sudo docker run -d --link db:db --name app chapeter/app /opt/acitoolkit/applications/endpointtracker/aci-endpoint-tracker.py -u https://$APIC_IP -l $APIC_USERNAME -p $APIC_PASSWORD -i db -a root -s ''
# launch presentation nodes
echo "********************"
echo "*  Launching Viz   *"
echo "********************"
sudo docker run -d -p 5001:5001 --link db:db --name viz chapeter/viz
echo "*******************************"
echo "*Launching Endpointtracker GUI*"
echo "*******************************"
sudo docker run -d -p 5000:5000 --link db:db --name web chapeter/web
echo "********************"
echo "*Launching Snapback*"
echo "********************"
sudo docker run -d -p 5002:5002 --name snapback chapeter/snapback

echo "********************"
echo "* localhost:5000   *"
echo "* localhost:5001   *"
echo "* localhost:5002   *"
echo "********************"
