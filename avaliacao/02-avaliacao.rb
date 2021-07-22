# 2) Faça uma função chamada 'multiplica_arrays' que deve receber como parâmetros 2 arrays 
# e deve retornar um valor numérico que deve ser o resultado da soma da multiplicação entre 
# os elementos que ocupam a mesma posição em cada array.
# Obs.: Valide se os 2 arrays têm o mesmo tamanho. Caso não tiverem, a função deve retornar nil.
def multiplica_arrays(array_1, array_2)
    if array_1.size != array_2.size
        return nil
    end
    soma = 0
    for n in (0..array_1.size-1)
        soma += (array_1[n] * array_2[n])
    end
    return soma
end

# puts multiplica_arrays([1, 2, 3], [10, 20, 30]) # deve imprimir 140