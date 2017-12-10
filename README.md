# PiBoot
Reboot a Raspberry Pi if it loses connection with an IP address

Copythe checkwifi.sh file to the /usr/local/bin directory and give it execute permissions:

    chmod +x /usr/local/bin/checkwifi.sh
  
Edit the IP address in the file above to point to an IP address that you trust to remain available at all times (e.g. the IP address of your router).

Edit the root users cron jobs:

    sudo crontab -e
  
And add the line:

    */5 * * * * /usr/bin/sudo -H /usr/local/bin/checkwifi.sh >> /dev/null 2>&1
  
This will run the checkwifi.sh script every 5 minutes, and it if does not get a response, assumes that network connection has been lost and reboots your Raspberry Pi.

(Or any other Linux system you're using!).
