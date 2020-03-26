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
#####
# Заменить 'admin' на логин вашего роутера
set username admin
# Заменить 'password' на пароль вашего роутера
set pass password
# Заменить 192.168.1.1 на IP адрес вашего роутера, если он отличается
set host 192.168.1.1

spawn telnet ${host}

expect -re "router login:"
send "${username}\r"

expect "Password:"
send "${pass}\r"

expect -re "ZySH"
# Зменить 'reboot' на любую команду перезагрузки, которую понимает ваш роутер
send "reboot\r"
# Заменить 'logout' на любую команду выхода, которую понимает ваш роутер
send "exit\r"
expect eof
