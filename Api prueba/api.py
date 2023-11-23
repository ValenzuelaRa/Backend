from flask import Flask, request

from es_pregunta import es_pregunta

app = Flask(__name__)

@app.route('/pregunta', methods=['POST', 'GET'])
def pregunta():
    if request.method == 'POST':
        data = request.get_json()
        pregunta = data.get('pregunta')
        tipo_pregunta = es_pregunta(pregunta)
        return {'Pregunta': pregunta, 'Tipo de Pregunta': tipo_pregunta}
    elif request.method == 'GET':
        return {'Mensaje': 'No es pregunta'}

if __name__ == '__main__':
    app.run(debug=True)
