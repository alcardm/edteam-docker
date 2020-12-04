# Mi primera imagen de Docker

# Imagen base
FROM ubuntu

# Ejecutar comando (en construcción de la imagen)
RUN apt update -y
RUN apt install python3 python3-dev -y
RUN apt install postgresql-client -y
RUN mkdir /app

# Definir mi directorio de trabajo
WORKDIR /app

# Variables de entorno
ENV MSG='Saludos a todos'

# Copiar archivos a mi contenedor
ADD . .
# COPY

# Ejecuta comandos (correr)
CMD python3 -m http.server 5000

# Exponer los puertos
EXPOSE 5000
