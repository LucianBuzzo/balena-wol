# balena + wake on LAN

Wake up your PC using a balena device!

[![balena deploy button](https://www.balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/LucianBuzzo/balena-wol)

## Usage

Install this app onto a balena device, then connect the device to your PC using an ethernet cable.
Ensure your PC has "Wake on LAN" enabled over ethernet, this process is well documented elsewhere and depends on your individual setup.
You will then need to grab your PC's MAC address and set it as the `MAC` device variable in balena cloud.
Once the container on the device starts up it will automatically send a WoL magic packet to the connected PC, waking it from sleep and then it will sit idle.
You can wake the PC again by simply restarting the container.

Pair with a desktop sharing tool like https://parsec.app/ for a great remote access experience!

## But why?

When travelling I like to use a small ultrabook, but occasionally I want to run some heavyweight software or play a game. Being able to connect to my PC using
parse is great, but I don't want to leave my PC running constantly. Instead I can have a small low power device, such as a RaspberryPi, connected to the PC and wake the PC up from sleep whenever I need it, by starting the device container using balena cloud.
Once I'm finished I can put the PC back to sleep, reducing noise and power consumption.