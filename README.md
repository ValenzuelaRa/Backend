# Backend
Descripción
Este proyecto consiste en un chatbot que puede responder preguntas de los usuarios sobre una variedad de temas. Los usuarios pueden hacer preguntas de texto libre y el chatbot responderá con información relevante, imágenes, videos, y enlaces URL, según corresponda.

Funcionalidades
Preguntas de Usuario: Los usuarios pueden hacer preguntas sobre cualquier tema.
- Respuestas Variadas: El chatbot puede proporcionar respuestas en forma de texto, imágenes, videos y enlaces URL.
- Registros de Preguntas y Respuestas: Se mantiene un registro de todas las preguntas hechas por los usuarios, las respuestas proporcionadas por el chatbot, junto con las fechas correspondientes.
- Preguntas Predefinidas: Además de las preguntas de usuario, el chatbot también puede responder preguntas predefinidas sobre temas específicos.
# Tecnologías Utilizadas
- Lenguaje de Programación: Python
- Base de Datos: MySQL
- Librerías: Flask para la creación de la API web.
- Estructura de la Base de Datos
- Tabla de Preguntas de Usuario

ID: Identificador único de la pregunta.
Pregunta: Texto de la pregunta realizada por el usuario.
Fecha: Fecha y hora en que se hizo la pregunta.
Tabla de Respuestas del Chatbot

ID: Identificador único de la respuesta.
ID_Pregunta: ID de la pregunta a la que se está respondiendo.
Respuesta_Texto: Texto de la respuesta proporcionada por el chatbot.
Respuesta_Imagenes: Enlaces a imágenes relacionadas con la respuesta.
Respuesta_Videos: Enlaces a videos relacionados con la respuesta.
Respuesta_URL: Enlaces URL relacionados con la respuesta.
Fecha: Fecha y hora en que se proporcionó la respuesta.
