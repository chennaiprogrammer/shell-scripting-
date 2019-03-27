
#! /bin/bash
echo "select any one option:"

echo "scan open port single ip address "
read opt1
echo "scan open port ipaddress range"

Nmap=$( dpkg -l |grep nmap |awk '{print $2;exit}')
if [ $Nmap == 'nmap' ]
then
	echo  "enter ip address: xxx.xxx.xxx.0/24 "
	read ip_address
	nmap $ip_address  > openportlist.txt
else

	sudo apt-get update
	sudo apt-get install nmap
fi







 
