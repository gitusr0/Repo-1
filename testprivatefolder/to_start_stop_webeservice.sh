#!/bin/bash
read -p "Enter the webservice you want to work with:" service
read -p "Enter the action start/stop the service:" action

if [ $action="start" ]
then
	echo "starting $service..."
	sudo systemctl start $service
	echo "$service started!"
	status=sudo systemctl status $service
	echo -e "Current status of the $service is \033[92m$status\033[0m"
fi

if [ $action="stop" ]
then
	echo "stopping $service..."
	sudo systemctl stop $service
	echo "$service stopped!"
	status=sudo systemctl status $service
	echo -e "Current status of the $service is \033[92m$status\033[0m"
fi


