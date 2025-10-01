# Explanation of flow of execution to build Docker container

1. Perform the configurations as usual for mosquitto borker in mosquitto/config/mosquitto.conf
2. Configure and review docker compose file
3. Configure and review doccker file in mosquito ´´´dockerfile.mosquitto´´´

## Simple explanation

El user que se ejecuta dentro del contenedor hay que cambiarlo a un GID y UID par que sea coherente con el proceso para esto se asigna el UID y GID (User id and Group ID) 1883:1883.


# Notes

### Change directory permissions
When host directory is mounted in the container ```/mosquitto/config```

```bash
chmod 0770 ./mosquitto/config
```