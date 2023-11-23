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
    pronombres_interrogativos = ["que", "quien", "quienes", "cual", "cuales", "cuanto", "cuantos", "cuanta", "cuanto"]
    
    adjetivos_interrogativos = ['que', 'cual', 'cuales', 'cuantos', 'cuantas', 'quien', 'donde', 'como', 'cuando', 'por que']
    
    adverbios_interrogativos = ["que", "cuales", "cuantos)", "quien", "donde", "como", "cuando", "por que"]
    
    particulas_interrogativas = ["no","acaso","verdad","a que","o no","no es cierto","no es verdad","no es asi"]

    # Convierte en minusculas el promt
    input_usuario_min = input_usuario.lower()

    # Divide el texto ingresado por el usuario en palabras y se asigna a la variable palabras
    palabras = input_usuario_min.split()
         
    
    
    # Banderas para el tipo de pregunta
    bandera = 0

    # Verificar cada palabra en la cadena
    
    
    for palabra in palabras:
            if palabra in pronombres_interrogativos:
                print(f'\nEs pregunta! --> "{input_usuario}"\n\nContiene la palabra: "{palabra}"\n\nTipo de pregunta: "Pronombres interrogativos"')
                bandera = 1  #Pregunta pronombres interrogativa 

            elif palabra in adjetivos_interrogativos:
                print(f'Es pregunta! --> "{input_usuario}"\n\nContiene la palabra: "{palabra}"\n\nTipo de pregunta: "Adjetivos interrogativos"')
                bandera = 2 #Pregunta Adjetivos Interrogativos

        
            elif palabra in adverbios_interrogativos:
                print(f'Es pregunta! --> "{input_usuario}"\n\nContiene la palabra: "{palabra}"\n\nTipo de pregunta: "Adverbios interrogativos"')
                bandera = 3 #Pregunta Adverbios Interrogativos

        
            elif palabra in particulas_interrogativas:
                print(f'Es pregunta! --> "{input_usuario}"\n\nContiene la palabra: "{palabra}"\n\nTipo de pregunta: "Particulas interrogativas"')
                bandera = 4 #Pregunta Particulas interrogativas
            
            else:
                if "por" in palabra and "que" in palabra and palabra[palabra.index("por") + 1] == "que":
                        bandera = 5

    return bandera # No es una pregunta

#Llamada a la funcion ingresando el valor del parametro
pregunta = input(f"Hola, cual es tu pregunta: ")

es_pregunta(pregunta)

