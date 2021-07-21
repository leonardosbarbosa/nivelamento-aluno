OUROS = "\u2666".encode('utf-8')
ESPADAS = "\u2660".encode('utf-8')
COPAS = "\u2665".encode('utf-8')
PAUS = "\u2663".encode('utf-8')
baralho = [
    "A"+OUROS, "A"+ESPADAS, "A"+COPAS, "A"+PAUS,
    "2"+OUROS, "2"+ESPADAS, "2"+COPAS, "2"+PAUS,
    "3"+OUROS, "3"+ESPADAS, "3"+COPAS, "3"+PAUS,
    "4"+OUROS, "4"+ESPADAS, "4"+COPAS, "4"+PAUS,
    "5"+OUROS, "5"+ESPADAS, "5"+COPAS, "5"+PAUS,
    "6"+OUROS, "6"+ESPADAS, "6"+COPAS, "6"+PAUS,
    "7"+OUROS, "7"+ESPADAS, "7"+COPAS, "7"+PAUS,
    "8"+OUROS, "8"+ESPADAS, "8"+COPAS, "8"+PAUS,
    "9"+OUROS, "9"+ESPADAS, "9"+COPAS, "9"+PAUS,
    "10"+OUROS, "10"+ESPADAS, "10"+COPAS, "10"+PAUS,
    "J"+OUROS, "J"+ESPADAS, "J"+COPAS, "J"+PAUS,
    "Q"+OUROS, "Q"+ESPADAS, "Q"+COPAS, "Q"+PAUS,
    "K"+OUROS, "K"+ESPADAS, "K"+COPAS, "K"+PAUS
]

def existe_no_array(array, elemento)
    for n in (0..array.size-1)
        if array[n] == elemento
            return true
        end
    end
    return false
end

def exibe_array(array)
    for i in (0..array.size-1)
        print(array[i])
        if i < array.size-1
            print(", ")
        end        
    end
    print("\n")
end
def embaralhador(baralho)
    # implemente o algoritmo desta função
    # a função deve retornar um array com o "baralho" embaralhado
    # OBS.: Usar somente funções "raiz" de manipulação de arrays!
    n = 0
    posicoes_aleatorias = []
    baralho_embaralhado = []

    while n < baralho.size
        num_aleatorio = rand(0..baralho.size - 1)
        if existe_no_array(posicoes_aleatorias, num_aleatorio)
            next
        else
            posicoes_aleatorias[n] = num_aleatorio
            n += 1
        end
    end
    n = 0
    while n < baralho.size
        baralho_embaralhado[n] = baralho[posicoes_aleatorias[n]]
        n += 1
    end
    return baralho_embaralhado
end
puts baralho.size
puts "Baralho ANTES:"
exibe_array(baralho)
puts "Baralho DEPOIS:"
exibe_array(embaralhador(baralho))