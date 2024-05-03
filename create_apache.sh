#! /bin/bash
# Comandos para instalar apache en amazon-linux
# sudo yum update -y
# sudo yum install -y httpd.x86_64
# sudo systemctl enable httpd --now


#!/bin/bash

# Actualizar la lista de paquetes e instalar actualizaciones en Ubuntu
sudo apt-get update && sudo apt-get upgrade -y

# Instalar el paquete Apache2
sudo apt-get install apache2

# Habilitar e iniciar el servicio Apache2
sudo systemctl enable apache2 && sudo systemctl start apache2
