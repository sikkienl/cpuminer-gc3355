#!/bin/bash
./minerd -o stratum+tcp://ltc.give-me-coins.com:3333 -u faster.1 -p abcd1234 --dual
#./minerd -o stratum+tcp://ltc.give-me-coins.com:3333 -u faster.1 -p abcd1234 -G /dev/ttyUSB0,/dev/ttyUSB1 --freq=700 -t 1 $1 $2 $3 $4
#./minerd -o stratum+tcp://ltc.give-me-coins.com:3333 -u faster.1 -p abcd1234 /dev/ttyACM0,/dev/ttyACM1 --freq=850 -t 1 $1 $2 $3 $4