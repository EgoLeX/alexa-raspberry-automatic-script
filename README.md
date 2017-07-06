# alexa-raspberry-automatic-script
This is an small and simple Project where you can find 2 scripts they can be executable to start the Amazon Alexa Voice Service on Raspberry Pi.
The first script (start-script) is for starting all necessary windows. The second script (stop-script) is for stopping the Alexa Voice Service.
These .sh-Files can be execute and make it simple to start/stop all important stuff that Alexa needs.

Please be sure you have done these two things before:
- [x] Installed and worked Amazon Alexa Service on Raspberry PI
    https://github.com/alexa/alexa-avs-sample-app/wiki/Raspberry-Pi
- [x] Installed and worked screen
  

This script is available in multiple Languages and it will be updated and improved as often as possible. This is my first simple but useful script that makes easier to run Alexa on Raspberry Pi.

If you want that Alexa starts on automaticly on Systemstart, just add the PATH/TO/YOUR/FILE.sh in the ".profiles" File in the pi(user) Directory.


**Important**

Please be sure to use this Start-Script only once and Stop it first before starting Alexa twice. If you run the Start-Script twice it can be possible that the Alexa Voice Service wont work. If you want going sure that Alexa is running, just Ask here anything or use the following command in terminal:
> screen -ls

