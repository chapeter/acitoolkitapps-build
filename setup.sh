#!/bin/bash

#APIC_IP=10.94.238.68
#APIC_USERNAME=admin
#APIC_PASSWORD=cisco123

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
#sudo docker run -d --name db db
#wait for the db node to come up so that it can be linked
#sleep 20
#sudo docker run -d --link db:db --name app app /opt/acitoolkit/applications/endpointtracker/aci-endpoint-tracker.py -u https://$APIC_IP -l $APIC_USERNAME -p $APIC_PASSWORD -i db -a root -s ''
# launch presentation nodes
#sudo docker run -d -p 5001:5001 --link db:db --name viz viz
#sudo docker run -d -p 5000:5000 --link db:db --name web web
#sudo docker run -d -p 5002:5002 --name snapback snapback
