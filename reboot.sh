#!/usr/bin/env expect
#
#	Это скрипт перезагрузки WiFi/LTE роутера Zyxel LTE-6101
#	подходит для восстановления связи при потере сигнала.
#
# 
# For Debian/Ubuntu do
#	sudo apt-get install expect
#
# For Fedora do
#	sudo dnf install expect
#
#
#replace 'admin' with your username
set username admin
#replace 'password' with your password
set pass password
#replace 192.168.1.1 with your router's IP address, if it differs
set host 192.168.1.1

spawn telnet ${host}

expect -re "router login:"
send "${username}\r"

expect "Password:"
send "${pass}\r"

expect -re "ZySH"
#replace 'reboot' with whatever your router's specific command is
send "reboot\r"
#replace 'logout' with whatever your router's specific command is
send "exit\r"
expect eof
