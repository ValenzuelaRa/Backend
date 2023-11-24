from flask import Flask, request

from es_pregunta import es_pregunta

# Crear una intancia de la aplicacion
app = Flask(__name__)

# Establecer la ruta para el request
@app.route('/pregunta', methods=['POST', 'GET'])


def pregunta():

    # Manejo de las solicitudes tipo POST
    if request.method == 'POST':

        #get.json Obtiene los datos de la solicitud
        data = request.get_json()

        #Obtiene la pregunta del diccionario
        pregunta = data.get('pregunta')

        # Verifica el tipo de pregunta con la funcion es_pregunta
        tipo_pregunta = es_pregunta(pregunta)

        # Devuelve la respuesta en formato JSON
        return {'Pregunta': pregunta, 'Tipo de Pregunta': tipo_pregunta}
    
    # Maneja la solicitud GET
    elif request.method == 'GET':

        # Devuelve un mensaje si los datos ingresados no son preguntas
        return {'Mensaje': 'No es pregunta'}

if __name__ == '__main__':
    app.run(debug=True)
