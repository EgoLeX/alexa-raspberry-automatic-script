#!/bin/bash
#Stoppe Alexa Service 

echo "-----------------------------"
echo "Stoppen von Alexa Service ..."
echo "-----------------------------"
sleep 3
screen -S alexa-npm-start -X quit
screen -S alexa-mvn-exec -X quit
screen -S alexa-wakeworddetection -X quit
sleep 3
echo "Alexa Service ist nun beendet"
echo "Bitte schließe dieses Fenster nicht. Es wird automatisch geschlossen!"
sleep 3
