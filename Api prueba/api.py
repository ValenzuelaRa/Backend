from flask import Flask, request

app = Flask(__name__)

@app.route('/pregunta', methods=['POST', 'GET']) #Ruta que asocia la duncion pregunta con la url
#Los metodos  que estan como parametros especifica que la funcion debe manejar ya sea una solicitud get o post
def pregunta():
    if request.method == 'POST':
        pregunta = "¿Cuál es tu color favorito?"
        return {'pregunta': pregunta}
    #El if verifica si la solicitud es post, si lo es se ejecuta el bloque
    elif request.method == 'GET':
        data = request.get_json()
        respuesta = data.get('respuesta')
        return {'respuesta': respuesta}, 200
#El if verifica si la solicitud es post, si lo es se ejecuta el bloque
#el request.get.json toma los datos como JSON del body de la solicitud y se almacena en la variable data
#return {'respuesta': respuesta}, 200. La linea devuelve un JSON de respiesta que contiene la vaiable respuesta. El 200 va indicar que la solicitud fue exitosa
if __name__ == '__main__':
    app.run(debug=True)
