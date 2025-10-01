#!/bin/sh
set -e

PASSWD_FILE="/mosquitto/config/passwd"

# Crear archivo de passwords si no existe
if [ ! -f "$PASSWD_FILE" ]; then
    echo "🔑 Creando archivo de contraseñas..."
    mosquitto_passwd -c -b "$PASSWD_FILE" "$MQTT_USER" "$MQTT_PASS"
else
    echo "🔑 Archivo de contraseñas existente, actualizando usuario..."
    mosquitto_passwd -b "$PASSWD_FILE" "$MQTT_USER" "$MQTT_PASS"
fi

# Ejecutar Mosquitto con la config
exec mosquitto -c /mosquitto/config/mosquitto.conf