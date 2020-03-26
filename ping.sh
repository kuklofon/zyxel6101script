#!/bin/bash
#Замените 8,8,8,8 на любой адрес, который хотите пинговать. Это адрес Google DNS.
if ! /bin/ping -c 1 8.8.8.8
then
/home/USER/reboot.sh # Заменить USER на имя своего пользователя
fi