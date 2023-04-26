
# FT Onion - Proyecto de Onion Service

Este proyecto es un ejemplo de cómo crear un servicio Onion utilizando Docker y Tor.

## Crear imagen

Para crear la imagen Docker del proyecto, ejecuta el siguiente comando en la raíz del proyecto:


> docker build -t ft_onion .
## Crear contenedor

Una vez que tengas la imagen Docker creada, puedes crear un contenedor para ejecutar el servicio Onion. Ejecuta el siguiente comando:

> docker container run -it -p 4242:4242 -p 9050:9050 -p 80:80 --name "web_tor" ft_onion



Este comando crea un contenedor Docker llamado "web_tor" y lo ejecuta en modo interactivo (-it). Los puertos 4242, 9050 y 80 están mapeados para permitir el acceso al servicio Onion.

## Obtener el dominio Onion

Para obtener el dominio Onion del servicio que acabas de crear, puedes ejecutar uno de los siguientes comandos:

> docker exec -it <id del contenedor> cat /var/lib/tor/my_website/hostname

Estos comandos muestran el dominio Onion generado por Tor para tu servicio.
