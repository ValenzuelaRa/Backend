from flask import Flask, request
from es_pregunta import es_pregunta

app = Flask(__name__)

@app.route('/pregunta', methods=['GET'])
def pregunta():
    pregunta = request.args.get('pregunta', '')
    
    if pregunta:
        es_pregunta_resultado, tipo_pregunta, palabra_clave = es_pregunta(pregunta)

        if es_pregunta_resultado:
            respuesta = f'Si es pregunta: "{pregunta}"\nTipo de pregunta: "{tipo_pregunta}"\nPalabra clave: "{palabra_clave}"'
            return respuesta
        else:
            return f'No es una pregunta. Código: {tipo_pregunta}', 400
    else:
        return 'Parámetro "pregunta" no proporcionado', 400

if __name__ == '__main__':
    app.run(debug=True)