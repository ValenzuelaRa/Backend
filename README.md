#Descripción
Este proyecto consiste en un chatbot que puede responder preguntas de los usuarios sobre una variedad de temas. Los usuarios pueden hacer preguntas de texto libre y el chatbot responderá con información relevante, imágenes, videos y enlaces URL, según corresponda.

1. Funcionalidades
- Preguntas de Usuario: Los usuarios pueden hacer preguntas sobre cualquier tema.
- Respuestas Variadas: El chatbot puede proporcionar respuestas en forma de texto, imágenes, videos y enlaces URL.
- Registros de Preguntas y Respuestas: Se mantiene un registro de todas las preguntas hechas por los usuarios, las respuestas proporcionadas por el chatbot, junto con las fechas correspondientes.
- Preguntas Predefinidas: Además de las preguntas de usuario, el chatbot también puede responder preguntas predefinidas sobre temas específicos.
2. Tecnologías Utilizadas
- Lenguaje de Programación: Python
- Base de Datos: MySQL
- Librerías: Flask para la creación de la API web.
- Estructura de la Base de Datos
- Tabla de Preguntas de Usuario
- ID: Identificador único de la pregunta.
- Pregunta: Texto de la pregunta realizada por el usuario.
- Fecha: Fecha y hora en que se hizo la pregunta.
- Tabla de Respuestas del Chatbot
- ID: Identificador único de la respuesta.
- ID_Pregunta: ID de la pregunta a la que se está respondiendo.
- Respuesta_Texto: Texto de la respuesta proporcionada por el chatbot.
- Respuesta_Imagenes: Enlaces a imágenes relacionadas con la respuesta.
- Respuesta_Videos: Enlaces a videos relacionados con la respuesta.
- Respuesta_URL: Enlaces URL relacionados con la respuesta.
- Fecha: Fecha y hora en que se proporcionó la respuesta.
3. Instalación
- Clonar el Repositorio: git clone [URL del repositorio]
. Configurar la Base de Datos: Importa el archivo SQL proporcionado en la carpeta "database" a tu sistema de gestión de bases de datos (por ejemplo, MySQL).
. Actualiza el archivo de configuración config.php con las credenciales de tu base de datos.

- Configurar el Entorno:
. Asegúrate de tener instalado Python y Flask en tu sistema.
. Configura tu servidor web para que la raíz del sitio apunte al directorio del proyecto.

- Iniciar el Servidor:
. Inicia tu servidor web y accede al proyecto en tu navegador.
4. Contribución
- Hacer Fork del Repositorio
- Crear una Rama (Branch): git checkout -b nombre-de-la-rama
- Hacer tus Cambios
- Confirmar tus Cambios: git commit -m "Descripción de los cambios"
- Empujar tus Cambios a tu Repositorio Fork: git push origin nombre-de-la-rama
- Abrir un Pull Request en el Repositorio Original
5. Problemas y Sugerencias
Si encuentras algún problema o tienes sugerencias para mejorar el proyecto, por favor abre un issue en este repositorio.

6. Información del Sistema

Servidor de Base de Datos:
- Servidor: 127.0.0.1 via TCP/IP
- Tipo de Servidor: MariaDB
- Usuario: root@localhost
- Conjunto de Caracteres del Servidor: UTF-8 Unicode (utf8mb4)

Servidor Web:
- Versión: Apache/2.4.54 (Win64) OpenSSL/1.1.1p PHP/8.1.10
- Versión de PHP:
- Versión: 8.1.10

phpMyAdmin:
- Versión: 5.2.0, versión estable más reciente: 5.2.1
