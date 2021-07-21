# 3) Escreva uma função chamada "calcula_media" que deve receber um array de números como parâmetro e deve retornar o valor da média aritmética entre todos os números do array.

def calcula_media(numeros)
    soma = 0.0
    for n in (0..numeros.size-1)
        soma += numeros[n]
    end
    return soma / numeros.size
end

# # TESTES
# puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0
# puts(calcula_media([5, 8, 9, 3]))  # deve imprimir 6.25
# puts(calcula_media([8, 11, 13, 7, 10]))  # deve imprimir 9.8