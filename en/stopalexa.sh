#!/bin/bash
#StopAlexa Service 

echo "------------------------"
echo "Alexa Services Stops ..."
echo "------------------------"
sleep 3
screen -S alexa-npm-start -X quit
screen -S alexa-mvn-exec -X quit
screen -S alexa-wakeworddetection -X quit
sleep 3
echo "Alexa Service is now offline"
echo "Dont close this Window. It will be closed automaticly!"
sleep 3
