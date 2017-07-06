#!/bin/bash
sudo systemctl status apache2.service
RC=$?
if [[ $RC == 0 ]]
then
  echo "Apache2 service running, so we will stop it."
  sudo systemctl stop apache2.service
  echo "Apache2 service had been stopped."
  sudo systemctl status apache2.service
else
  echo "Apache2 service already stopped."
fi
