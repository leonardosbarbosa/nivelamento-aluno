# Fazer uma função chamada 'insere_no_array' que recebe um array, 
# um valor qualquer e a posição alvo como parâmetros e que deve inserir o valor informado na posição alvo, 
# de modo a 'empurrar para a frente' os demais elementos e ao final retornar true. 
# Se a posição alvo não estiver no limite do array, a função deve retornar false.

def insere_no_array(array, valor, alvo)
if alvo >= array.size || alvo < 0
    return false
end
    posicao = array.size
    while posicao > alvo
        array[posicao] = array[posicao-1]
        posicao -= 1
    end
    array[alvo] = valor
    return true
end

numeros = [1, 5, 7, 3]

puts
puts "Array antes da alteração: #{numeros}"
puts "Inserindo 100 na posição 3: #{insere_no_array(numeros, 100, 3)} -> #{numeros}"
puts "Inserindo 30 em uma posição inválida: #{insere_no_array(numeros, 30, 6)} -> #{numeros}"
puts "Inserindo 42 na posição 1: #{insere_no_array(numeros, 42, 1)} -> #{numeros}"
puts
