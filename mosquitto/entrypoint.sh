#!/bin/sh
set -e

PASSWD_FILE="/mosquitto/config/passwd"

# Crear archivo de passwords si no existe
echo "🔑 Creando archivo de contraseñas..."
exec mosquitto_passwd -c -b "$PASSWD_FILE" "$MQTT_USER" "$MQTT_PASS"

# Ejecutar Mosquitto con la config
exec mosquitto -c /mosquitto/config/mosquitto.conf