ping -c4 192.168.13.1 > /dev/null

if [ $? != 0 ]
then
  sudo /sbin/shutdown -r now
fi
