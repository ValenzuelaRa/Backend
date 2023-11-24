def es_pregunta(input_usuario):
    pronombres_interrogativos = ["quién", "quienes", "qué", "cuál", "cuáles"]
    adverbios_interrogativos = ["cómo", "cuándo", "dónde", "por qué"]
    particulas_interrogativas = ["si", "no", "acaso", "verdad"]
    palabras_clave_especificas = ["que", "cuál", "por", "que"]

    input_usuario = input_usuario.lower()
    palabras = input_usuario.split()

    bandera = 0  # Por defecto, no es una pregunta
    tipo_pregunta = ""
    palabra_clave = ""

    for palabra in palabras:
        if palabra in pronombres_interrogativos:
            bandera = 1
            tipo_pregunta = "Pronombres Interrogativos"
            palabra_clave = palabra
            break
        elif palabra in adverbios_interrogativos:
            bandera = 2
            tipo_pregunta = "Adverbios Interrogativos"
            palabra_clave = palabra
            break
        elif palabra in particulas_interrogativas:
            bandera = 3
            tipo_pregunta = "Partículas Interrogativas"
            palabra_clave = palabra
            break
        elif palabra in palabras_clave_especificas:
            if "por" in palabras and "que" in palabras:
                bandera = 4
                tipo_pregunta = "Específica con 'por que'"
                palabra_clave = palabra
                break

    return bandera, tipo_pregunta, palabra_clave