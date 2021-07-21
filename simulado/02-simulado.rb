# 2) Defina uma função chamada “negativos_positivos”, que deve receber um array de números e que deve retornar outro array com os seguintes 3 números:
# 1. Na primeira posição, o percentual de números do array que são positivos
# 2. Na segunda posição, o percentual de números do array que são zero
# 3. Na última posição, o percentual de números do array que são negativos

def negativos_positivos(numeros)
    positivos = 0.0
    negativos = 0.0
    zeros = 0.0
    for n in (0..numeros.size-1)
        if numeros[n] > 0
            positivos += 1
        elsif numeros[n] == 0
            zeros += 1
        else
            negativos += 1
        end
    end
    positivos /= numeros.size
    negativos /= numeros.size
    zeros /= numeros.size
    return [positivos, zeros, negativos]
end

# # TESTES
# print(negativos_positivos([1, 2, 0, -1]))
# print("\n")
# # deve imprimir o array [0.5, 0.25, 0.25]
# # pois há 50% de números positivos no array, 25% de números zero e 25% de números negativos

# print(negativos_positivos([3, 0, -1])) # [0.33, 0.33, 0.33]
# print("\n")
# print(negativos_positivos([0, 5, 1, 1])) # [0.75, 0.25, 0.0]
# print("\n")