#!/bin/sh
# set -e

# PASSWD_FILE="/mosquitto/config/passwd"

# if [ ! -f "$PASSWD_FILE" ]; then
#     echo "🔑 Creando archivo de contraseñas..."
#     mosquitto_passwd -c -b "$PASSWD_FILE" "$MQTT_USER" "$MQTT_PASS"
# else
#     echo "🔑 Actualizando usuario existente..."
#     mosquitto_passwd -b "$PASSWD_FILE" "$MQTT_USER" "$MQTT_PASS"
# fi

# # Ejecutar el broker
# exec mosquitto -c /mosquitto/config/mosquitto.conf
#!/bin/sh
set -e

PASSWD_FILE="/mosquitto/config/passwd"

# Create password if not exists
if [ ! -f "$PASSWD_FILE" ]; then
    echo "Creating passwords..."
    mosquitto_passwd -c -b "$PASSWD_FILE" "$MQTT_USER" "$MQTT_PASS"
fi

# Start mosquitto with the already copied config
exec mosquitto -c /mosquitto/config/mosquitto.conf