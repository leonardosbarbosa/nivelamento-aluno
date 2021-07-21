# Fazer uma função chamada 'posicao_no_array' que recebe um array e um valor qualquer como parâmetros e que deve 
# retornar a posição da primeira ocorrência do valor no array. 
# Se o valor não existir no array, retornar -1.

def posicao_no_array(array, valor)
    for pos in (0..array.size-1)
        if valor == array[pos]
            return pos
        end
    end
    return -1
end

numeros = [5, 7, 9, 23, 7]
frutas = ["banana", "limão", "morango", "laranja", "manga"]

puts posicao_no_array(numeros, 7)
puts posicao_no_array(numeros, 23)
puts posicao_no_array(numeros, 9)
puts posicao_no_array(numeros, 80)
puts
puts posicao_no_array(frutas, "melancia")
puts posicao_no_array(frutas, "laranja")
puts posicao_no_array(frutas, "limão")
puts posicao_no_array(frutas, "banana")