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
    
    adverbios_interrogativos = ['cuando', 'por que', 'como']
    
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
            bandera = 1
            return f'\nEs pregunta: "{input_usuario}"\n\nContiene la palabra: "{palabra}"\n\nTipo de pregunta: "Pronombres interrogativos": {bandera}'  # Pregunta con pronombres interrogativos
        
        elif palabra in adjetivos_interrogativos:
            bandera = 2
            return f'\nEs pregunta: "{input_usuario}"\n\nContiene la palabra: "{palabra}"\n\nTipo de pregunta: "Pronombres interrogativos": {bandera}'  # Pregunta con adjetivos interrogativos
       
        elif palabra in adverbios_interrogativos:
            bandera = 3
            return f'\nEs pregunta: "{input_usuario}"\n\nContiene la palabra: "{palabra}"\n\nTipo de pregunta: "Pronombres interrogativos": {bandera}'  # Pregunta con adverbios interrogativos
       
        elif palabra in particulas_interrogativas:
            bandera = 4
            return f'\nEs pregunta: "{input_usuario}"\n\nContiene la palabra: "{palabra}"\n\nTipo de pregunta: "Pronombres interrogativos": {bandera}'  # Pregunta con partículas interrogativas

    return f'\n"{input_usuario}"No es pregunta: {bandera}'  # No es una pregunta

#Llamada a la funcion ingresando el valor del parametro
print(es_pregunta("Donde puedo encontrar mi perro?"))
print(es_pregunta("Acaso podria incribirme a la escuela fuera del tiempo de convocatoria?"))
print(es_pregunta("que esun kardex"))
print(es_pregunta("Cuando se habre la convocatoria?"))
print(es_pregunta("Quiero un sushi"))