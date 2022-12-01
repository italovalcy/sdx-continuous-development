#!/bin/sh

sleep 60

while ! nc -z 192.168.0.6 27027; do
  sleep 1 # wait 1 second before check for mongo1t again
done

while ! nc -z 192.168.0.7 27028; do
  sleep 1 # wait 1 second before check for mongo2t again
done

while ! nc -z 192.168.0.8 27029; do
  sleep 1 # wait 1 second before check for mongo3t again
done

exec kytosd -l 192.168.0.4 -f --database mongodb
