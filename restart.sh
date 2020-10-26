#!/bin/bash
#script to restart a service on linux server
#Author: Abhilash Madhu

echo "-------------------------------------------------"
echo " "
read -p "Please enter the service to restart: " service
echo "-------------------------------------------------"
echo "Restarting" $service ".....!!!!"
systemctl restart $service

if [ $? -eq 0 ]
then
  echo "Done !!! "
  stats=$(systemctl status httpd | grep Active | cut -d 's' -f1)
  echo $service "status is" $stats
else
echo "Unable to restart the service, Make sure whether the service is properly installed on server";
fi
~    
