#!/bin/bash
Jour=$(date +%d-%m-%Y-%H:%M)
file=number_connection-$Jour
sudo grep Accepted /var/log/auth.log >> $file
tar -cvf /home/christopher/Shell.exe/Job\ 8/$file.tar.gz $file
mv $file.tar.gz /home/christopher/Shell.exe/Job\ 8/Backup
rm $file
