#!/bin/bash

# Use this script to generate large amounts of SSH requests to generate logs in Kibana

# To make this script work for you update the IP adresses below to match the IP address of your machines
web1="10.0.0.5"
web2="10.0.0.7"
web3="10.0.0.9"

# Ask the user how many ssh requests to generate and which servers to test

read -p "Enter the number of SSH requests you would like to make: " count
read -p "Which servers would you like to test? 1 = $web1, 2 = $web2, 3 = $web3, 4 = all: " server

# This loop counts down to zero to make the number of requests the user entered

while [ $count -gt 0 ] # while $count is greater than zero
do

  case "$server" in

# Make sure you do not have user "fail" on target server so the request fails


    "1") ssh -tt fail@$web1 ;;
    "2") ssh -tt fail@$web2 ;;
    "3") ssh -tt fail@$web3 ;;
    "4") ssh -tt fail@$web1 && ssh -tt fail@$web3 && ssh -tt fail@$web3 ;;
    esac

  count=$(( $count - 1 ))

done

sleep 0.8s
echo " Done making requests! "