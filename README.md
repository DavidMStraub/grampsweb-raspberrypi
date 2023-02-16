# Gramps Web custom Raspberry Pi OS image

A Custom Raspberry Pi OS image for [Gramps Web](https://gramps-project.github.io/web/).


## Usage

1. Install the [Raspberry Pi Imager](https://www.raspberrypi.com/software/)
2. Download and unzip the image from the [latest release](https://github.com/DavidMStraub/grampsweb-raspberrypi/releases/tag/v0.0.5)
3. Flash the image to an SD card
4. Connect your Raspberry PI to an Ethernet cable, insert the SD card and connect it to USB power
5. Connect via SSH to `pi@raspberrypi` using the initial password `raspberry`
6. At the login prompt, you will be asked the following questions:
    - **Please enter the domain name you will use for Gramps Web:** if you want your Gramps Web to be accessible from the internet, enter a domain name (`mygrampsweb.com`) or subdomain (`mygrampsweb.example.com`). A Dynamic DNS service like [Duck DNS](https://www.duckdns.org/) will work fine! If you just want to test the app in your local network, enter the Pi's host name (`raspberrypi`).
    - **Optionally, please enter the e-mail address that will be associated with your Let's Encrypt certificate:** This can be any of your e-mail addresses and does not have to be at the same domain as your Gramps Web.
7. Your Gramps Web first-run wizard should now be accessible at the domain you specified (with https:// for a public address or http://rasperrypi in the local case).


Feel free to report [issues](https://github.com/DavidMStraub/grampsweb-raspberrypi/issues) with usage of this image.