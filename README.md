# Documento de talleres....

# 1) LaboratorioEC2

Estudiante: William Andres Yaruro Cuan
Docente: Salomon Cadena
Asignatura: Cloud Computing


Paso 1:

Creamos un usuario con sus respectivos permisos.

![image](https://user-images.githubusercontent.com/52756461/202365196-6099be38-aaa0-4740-91f5-7919606b9bd2.png)

Paso 2: 

El siguiente código será el ejecutado por nuestro IDE VisualCode.

![image](https://user-images.githubusercontent.com/52756461/202365263-0c08fe7f-d2bc-4ef7-b67c-2fd100475e60.png)

Paso 3:

Ejecutamos el comando Init de terraform para inicializar el directorio. 

![image](https://user-images.githubusercontent.com/52756461/202365335-c1b5fb6f-edcb-434a-ab83-8a1373800410.png)

![image](https://user-images.githubusercontent.com/52756461/202365354-12e5709b-8402-447d-9a60-19e79a720e8c.png)


Paso 4:
 
Aplicamos y creamos nuestra instancia Ec2
 
![image](https://user-images.githubusercontent.com/52756461/202365374-cb593fc0-9ba8-4bcf-ac1e-a5c997490f04.png)


# 2) Api GW>>lambdas (CRUD) >>DB (aurora serverless / Dynamo) Using IaC

DESCARGAR PDF PARA VISUALIZACIÓN

INTEGRANTES:
•	William Andres Yaruro Cuan
•	Jose Camilo Ricardo Viloria
•	Brian Andres Acuña Donado
PRIMERO CREAR UN USUARIO Y GRUPO PARA ESTE TALLER.
 
DESCARGAR E INSTALLAR AWS CLI
 
Una vez finalizada la instalación vamos a proceder a abrir la consola de comandos (Windows + R) (Type: cmd)
 
Verificamos que esté instalado correctamente aws CLI
 
Utilizamos el cmd “aws configure” para configurar aws….
Configuramos nuestras credenciales de nuestro usuario…
 
Ahora vamos a configurar SERVERLESS
 
Para instalar SERVERLESS lo haremos con ayuda de NODE.JS
 
 
Seleccionamos una ruta para crear SERVERLESS..
 
 
Y ya con esto quedaría creado el proyecto básico creado..
 
Ahora vamos a abrir nuestro editor de código, en este caso estaremos utilizando VISUAL STUDIO CODE.
 
Configuramos la región en la que vamos a estar utilizando los servicios de aws.
 
Vamos a desplegar la aplicación con una función de serverless.
  
Al finalizar nos va a retornar el endpoint que acabamos de crear.
 




Configuración DynamoDB:
Ahora vamos a comenzar la creación del CRUD, conectándonos a la base de datos en este caso utilizando DYNAMO DB..
 
Para esto configuramos un apartado de recursos en nuestro serverless.yml
Después vamos a volver a ejecutar el comando de serverless para subir los cambios…
 
Con estos pasos quedaría creada nuestra tabla dentro de DynamoDB…

El siguiente paso es configurar TaskTable en nuestro proyecto…
 
 
Copiamos esa informacion de ARN… y agregamos a nuestro serverless.yml…
 
Con esto quedaría configurado el apartado de DynamoDB….


Configuración de LAMBDA:
Ahora vamos a reordenar nuestro código, en este caso crearemos una carpeta SRC, pasaremos el archivo handler.js a esta carpeta, a este archivo le actualizaremos el nombre para identificarlo de forma más fácil.
Al momento de realizar este cambio es necesario que también se actualice la ruta dentro del serverless.yml, agregando la carpeta que fue creada “src”
 
Ahora vamos a crear una función nueva llamada addTask.js dentro de la carpeta que acabamos de crear “src”, después de crear la carpeta es necesario configurar esa información en el serverless.yml.
 
En la función vamos a escribir lo siguiente:
 
Ahora es necesario crear un ID a través de un módulo, en este caso es uuid.
 
Esto debemos referenciarlo como se muestra en la imagen anterior de la función…
Es importante también verificar que este configurado el uuid dentro del Package.json, en caso de que este archivo no este creado, ejecutar el comando “npm init –y” esto solo en caso de que no esté el archivo.
 
Después de realizar este proceso es necesario instalar otro modulo, en este caso el “npm i aws-sdk”
 
Ahora vamos a actualizar esos cambios en aws…
 

Ahora podemos utilizar un servicio de aws llamado CloudWatch, este servicio nos permite monitorear recursos y aplicaciones (LOGS)
 
Aquí podremos monitorear todas las solicitudes que hagamos a los endpoints..
Configurar EndPoint para traer las tareas:
Estos procesos son casi parecidos, siguiendo los mismos pasos del punto anterior para crear la función y llamarla dentro del serverless.yml.
 
 
Al actualizar los cambios en aws con serverles, automáticamente va a retornar la url del endpoint el cual puede ser probado con algún recurso para peticiones http.
Obtener solo las tareas:
Lo que vamos a configurar ahora es como devolver una sola tarea apartir de un ID.
Estos procesos son casi parecidos, siguiendo los mismos pasos del punto anterior para crear la función y llamarla dentro del serverless.yml.
 
 
Al actualizar los cambios en aws con serverles, automáticamente va a retornar la url del endpoint el cual puede ser probado con algún recurso para peticiones http.
Actualizar una tarea:
Lo que vamos a configurar ahora es como actualizar una sola tarea apartir de un ID.
Estos procesos son casi parecidos, siguiendo los mismos pasos del punto anterior para crear la función y llamarla dentro del serverless.yml. 
 
Al actualizar los cambios en aws con serverles, automáticamente va a retornar la url del endpoint el cual puede ser probado con algún recurso para peticiones http.


Eliminar Tareas:
Lo que vamos a configurar ahora es como eliminar una sola tarea apartir de un ID.
Estos procesos son casi parecidos, siguiendo los mismos pasos del punto anterior para crear la función y llamarla dentro del serverless.yml.
 
 
Al actualizar los cambios en aws con serverles, automáticamente va a retornar la url del endpoint el cual puede ser probado con algún recurso para peticiones http.

Ya con estas configuraciones, nuestro CRUD, estaría terminado.
Ahora vamos a configurar los Middlewares.
¿Qué es un Middleware?
Los middleware son funciones que se ejecutan antes de que llegue una función principal.
Para utilizar Middleware en nuestro proyecto es necesario instalar un módulo llamado middy, para esto vamos a utilizar nuevamente node..
npm i @middy/core
Esto nos permite procesar datos antes de que llegue la función principal con la palabra clave use.
 
Ahora instalamos npm i @middy/http-json-body-parser
 
Configuración:
 
 
Actualizamos serverless en aws….
 
 
 	 


