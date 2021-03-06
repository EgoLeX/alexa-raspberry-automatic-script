#!/bin/bash
#Alexa Automated 

echo "------------------------------------"
echo "Automated Startup for Alexa Services"
echo "------------------------------------"
sleep 3
echo "[Start] npm Service"
sleep 3
#
cd home/pi/Desktop/alexa-avs-sample-app/samples/companionService/
screen -dmS alexa-npm-start
screen -r alexa-npm-start -X exec npm start
#
sleep 10
echo "[Complete] Start of NPM Service"
sleep 3
echo "[Start] Maven (needs ~30 sec)"
sleep 3
#
cd home/pi/Desktop/alexa-avs-sample-app/samples/javaclient/ 
screen -dmS alexa-mvn-exec
screen -r alexa-mvn-exec -X exec mvn exec:exec
#
sleep 30
echo "[Complete] Start of mvn exec:exec"
sleep 3
echo "[Start] WakeWordDetection"
cd home/pi/Desktop/alexa-avs-sample-app/samples/wakeWordAgent/src
screen -dmS alexa-wakeworddetection
screen -r alexa-wakeworddetection -X exec ./wakeWordAgent -e sensory
sleep 5
echo "[Complete] Start of WakeWordDetection"
sleep 3
echo "-- All Steps completed --"
echo "Dont close this Window. It will be closed automaticly!"
sleep 10
