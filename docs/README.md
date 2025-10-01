# Explanation of flow of execution to build Docker container

1. Perform the configurations as usual for mosquitto borker in mosquitto/config/mosquitto.conf
2. Configure and review docker compose file
3. Configure and review doccker file in mosquito ´´´dockerfile.mosquitto´´´

## Simple explanation

El user que se ejecuta dentro del contenedor hay que cambiarlo a un GID y UID par que sea coherente con el proceso para esto se asigna el UID y GID (User id and Group ID) 1883:1883.

Mosquito necesita el archivo de passwords bajo el usuario root
Para esto durante la creacion del contenedor se necesita definir un entrypoint que realice la opracion
antes de arrancar el contenedor

Se necesita preparar los permisos para los directorios los cuales seran bind mount

La imagen mosquitto utiliza el user y grupo mosquito UID & GID 1883

## Configuracion de permisos

```bash
chmod 0775 file
```

Para este caso se asignan permisos para:
Simbols: r = read, w = write, x = execute
- Especiales: Ninguno es un 0
- Owner, User: 4 lectura, 2 escritura, 1 ejecucion es un 7
- Grupo: 4 lectura, 2 escritura, 1 ejecucion es un 7
- Otros usuarios del sistema: 4 lectura, 1 ejecucion es un 5

# Notes

### Change directory permissions
When host directory is mounted in the container ```/mosquitto/config```

```bash
chmod 0770 ./mosquitto/config
```