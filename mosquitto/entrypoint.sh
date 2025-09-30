#!/bin/sh
set -e

PASSWD_FILE=/mosquitto/config/passwd

if [ ! -f "$PASSWD_FILE" ]; then
    mosquitto_passwd -c -b $PASSWD_FILE $MQTT_USER $MQTT_PASS
    echo "Usuario $MQTT_USER creado en $PASSWD_FILE"
fi