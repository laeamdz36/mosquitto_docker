# Explanation of flow of execution to build Docker container

1. Perform the configurations as usual for mosquitto borker in mosquitto/config/mosquitto.conf
2. Configure and review docker compose file
3. Configure and review doccker file in mosquito ´´´dockerfile.mosquitto´´´

# Notes

### Change directory permissions
When host directory is mounted in the container mosquitto/config

´´´bash
chmod 0700 ./mosquitto/config
´´´