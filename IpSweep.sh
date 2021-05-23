#!/bin/bash

read -p "Please enter first three bytes of ip [Example: XX.X.X]: " IpAdd
if [ "$IpAdd" == "" ]
then
echo "You forgot an IP address!"

else
echo "Results are: "
for Ip in `seq 1 254`; do
ping -c 1 $IpAdd.$Ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
