from flask import Flask, request, jsonify
from es_pregunta import es_pregunta

app = Flask(__name__)

@app.route('/', methods=['GET'])
def analizar_pregunta():
    pregunta = request.args.get('pregunta', '')
    resultado, palabra_interrogativa, tipo_pregunta = es_pregunta(pregunta)

    if resultado != 0:
        response = {
            'Es pregunta': f'"{pregunta}"',
            'Palabra': f'"{palabra_interrogativa}"',
            'Tipo de Pregunta Detallado': f'"{tipo_pregunta}, {resultado}"'
        }
    else:
        response = {
            'Es pregunta': f'"{pregunta}"',
            'Palabra': '',
            'Tipo de Pregunta': 'No es una pregunta'
        }

    return jsonify(response)

if __name__ == '__main__':
    app.run(debug=True)
