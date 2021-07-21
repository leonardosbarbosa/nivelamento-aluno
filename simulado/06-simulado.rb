# 6) Faça uma função chamada 'menor_maior' que recebe um array de números e que deve retornar outro array, 
# contendo apenas 2 elementos: o primeiro deve ser o menor número do array informado e o segundo deve ser o maior.

def menor_maior(numeros)
    array = [numeros[0], numeros[0]]
    n = 0
    while n < numeros.size
        if numeros[n] < array[0]
            array[0] = numeros[n]
        end
        if numeros[n] > array[1]
            array[1] = numeros[n]
        end
        n += 1
    end
    return array
end

# # TESTES
# print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
# puts
# print(menor_maior([22, 10, 13, 11, 18])) # deve imprimir [10, 22]
# puts
# print(menor_maior([-5, 98, 50, 41])) # deve imprimir [-5, 98]
# puts
# print(menor_maior([26])) # deve imprimir [26, 26]
# puts