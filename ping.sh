#!/bin/bash
#replace '8.8.8.8' with your preferred address to ping. This is a Google DNS server address which you should be able to ping successfully if you are connected to the internet.
if ! /bin/ping -c 1 8.8.8.8
then
/home/USER/reboot.sh # replace 'user' with your username
fi