#!/bin/bash

bash airodump.sh &
wait 10
bash camera-deauther.sh &
wait 10

