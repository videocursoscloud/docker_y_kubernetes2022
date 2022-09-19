# Laboratorio 1

En este primer taller o laboratorio vamos a crear e instalar una web en python y alojarla en un cluster en aws eks. Para ello realizaremos las siguientes acciones:

- Desplegar un cluster de kubernetes en AWS eks con eksctl.
- Crear una aplicacion basica en python con Flask que nos mostrara un hola mundo
- Crear un registro ECR para alojar nuestra aplicacion
- Subir la imagen de docker para dicha aplicacion al registro ECR
- Desplegar los elementos necesarios para tener balanceadores de carga y gestion dns en nuestro cluster (Load balancer ingress controller y external DNS)
- Configuraremos nuestros ingress para servir el trafico a traves de un balanceador de carga tipo ALB y crear un dominio via external dns 
- Configuraremos nuestro ingress para usar SSL
- Crearemos nuestros certificados SSL en aws certificate manager
- Desplegaremos nuestra aplicacion
- Modificaremos nuestra aplicacion y Desplegaremos la nueva version.
