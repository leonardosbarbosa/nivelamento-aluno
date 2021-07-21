# 5) Faça uma função chamada 'mediana' que recebe um array de números e retorna a mediana entre eles.
# Lembrando que para obter a mediana de uma série de números, é necessário ordenar a série (usar a função sort()) e retornar:
# - se a série tiver um número (n) ímpar de elementos, retornar o número da posição n/2 (a parte inteira);
# - e caso se a série tiver um número (n) par de elementos, retornar a média entre os números das posições (n/2)-1 e (n/2)

def mediana (numeros)
    qtd_elementos = numeros.size
    numeros_ordenados = numeros.sort()
    if qtd_elementos % 2 == 0
        return (numeros_ordenados[(qtd_elementos/2) - 1] + numeros_ordenados[qtd_elementos/2]) / 2.0
    else
        return numeros_ordenados[qtd_elementos/2]
    end
end

# # TESTES
# puts(mediana([10, 0, -1, -500, 20, 100])) # deve imprimir 5.0
# puts(mediana([10, 0, -1, -500, 20]))      # deve imprimir 0.0
# puts(mediana([1, 2, 3, 4, 5]))            # deve imprimir 3
# puts(mediana([1, 2, 3, 4, 5, 6]))            # deve imprimir 3.5