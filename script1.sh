#!/bin/bash

diskused=$(df -h | grep "/dev/sda1" | awk '{print $5}')

memfree=$(free -mh | grep Mem: | awk '{print $7}')

connections=$(netstat | grep tcp)

users=$(who)

echo "
Disk Used: $diskused
Free Memory: $memfree
Logged in Users: $users
Open Internet Connections: $connections
"
