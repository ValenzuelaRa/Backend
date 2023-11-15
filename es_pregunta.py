def es_pregunta(input_usuario):
    """
    Determina si el parametro ingresado es una pregunta y clasifica el tipo de pregunta.

    Parámetros:
    - input_usuario: El texto ingresado por el usuario que el agoritmo determinara si es una pregunta.

    Retorna:
    -      0: si no es una pregunta, 
           1: si es una pregunta con pronombres interrogativos,
           2: si es una pregunta con adjetivos interrogativos,
           3: si es una pregunta con adverbios interrogativos,
           4: si es una pregunta con partículas interrogativas.
    """

    # Listas de palabras interrogativas
    pronombres_interrogativos = ['quien', 'que', 'cual', 'cuales', 'cuanto', 'cuantos', 'cuanta', 'cuantas', 'cuando', 'donde', 'por que', 'como']
    
    adjetivos_interrogativos = ['que', 'cual', 'cuales', 'cuanto', 'cuantos', 'cuanta', 'cuántas']
    
    adverbios_interrogativos = ['donde', 'cuando', 'por que', 'como']
    
    particulas_interrogativas = ["no","acaso","verdad","a que","o no","no es cierto","no es verdad","no es asi"]

    # Convierte en minusculas el promt
    input_usuario = input_usuario.lower()

    # Divide el texto ingresado por el usuario en palabras y se asigna a la variable palabras
    palabras = input_usuario.split()

    # Banderas para el tipo de pregunta
    bandera = 0

    # Verificar cada palabra en la cadena
    for palabra in palabras:
        if palabra in pronombres_interrogativos:
            return 1  # Pregunta con pronombres interrogativos
        elif palabra in adjetivos_interrogativos:
            return 2  # Pregunta con adjetivos interrogativos
        elif palabra in adverbios_interrogativos:
            return 3  # Pregunta con adverbios interrogativos
        elif palabra in particulas_interrogativas:
            return 4  # Pregunta con partículas interrogativas

    return 0  # No es una pregunta
