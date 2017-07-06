#!/bin/bash
#Alexa Automatisch

echo "-------------------------------------"
echo "Automatischer Start vom Alexa Service"
echo "-------------------------------------"
sleep 3
echo "[Start] npm Service"
sleep 3
#
cd home/pi/Desktop/alexa-avs-sample-app/samples/companionService/
screen -dmS alexa-npm-start
screen -r alexa-npm-start -X exec npm start
#
sleep 10
echo "[Fertig] Start of NPM Service"
sleep 3
echo "[Start] Maven (ca. ~30 sek)"
sleep 3
#
cd home/pi/Desktop/alexa-avs-sample-app/samples/javaclient/ 
screen -dmS alexa-mvn-exec
screen -r alexa-mvn-exec -X exec mvn exec:exec
#
sleep 30
echo "[Fertig] Start von mvn exec:exec"
sleep 3
echo "[Start] WakeWordDetection"
cd home/pi/Desktop/alexa-avs-sample-app/samples/wakeWordAgent/src
screen -dmS alexa-wakeworddetection
screen -r alexa-wakeworddetection -X exec ./wakeWordAgent -e sensory
sleep 5
echo "[Fertig] Start von der WakeWordDetection"
sleep 3
echo "-- Alle Schritte erledigt --"
echo "Schließe dieses Fenster nicht. Es wird automatisch geschlossen!"
sleep 10
