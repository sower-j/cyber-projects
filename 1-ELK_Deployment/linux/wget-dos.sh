#!/bin/bash

# This will preform a light DOS attack on your web VMs,
# the objective is to be able to see logs of what a DOS attack might look like.
# This will also allow you to test the capacity of your VMs to see if they can
# handle your expected network traffic


# To make this script work for you update the IP adresses below to match the IP address of your machines
web1="10.0.0.5"
web2="10.0.0.7"
web3="10.0.0.9"

# Ask the user how many requests to make and which servers to attack

read -p "Enter the number of http requests you would like to make: " count
read -p "Which servers would you like to test? 1 = $web1, 2 = $web2, 3 = $web3, 4 = all: " server


# this loop counts down to zero to make the number of requests the user entered

while [ $count -gt 0 ] # while count is greater than 0
do

  case "$server" in

# -O/dev/null makes wget download files to /dev/null so you don't end up with hundreds of files left over
# To make this script work for you update the IP adresses below to match the IP address of your machines
    "1") wget -O/dev/null $web1 ;; 

    "2") wget -O/dev/null $web2 ;;

    "3") wget -O/dev/null $web3 ;;

    "4") wget -O/dev/null $web1 && \
            wget -O/dev/null $web2:80 && \
            wget -O/dev/null $web3:80 ;;

    esac

  count=$(( $count - 1 ))

done

sleep 0.8s
echo " Done making requests! "