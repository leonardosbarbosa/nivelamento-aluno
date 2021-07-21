# Fazer uma função chamada 'remove_da_posicao' que recebe um array e a posição alvo como parâmetros 
# e que deve retornar um novo array sem o elemento da posição alvo que estava no array informado. 
# Se a posição alvo estiver fora do limite do array e apontar para o primeiro ou último elemento, a função retorna o array inteiro.

def remove_da_posicao(array, alvo)
    # O alvo nao pode ser a posicao 0, a ultima pos ou uma pos fora do escopo
    if alvo >= array.size-1 || alvo <= 0
        return array
    end
    novo_array = []
    pos_array = 0 # Irá percorrer e incrementar o índice de array
    pos_novo = 0 # Irá percorrer e incrementar o índice de novo_array
    while pos_array < array.size  
        if pos_array != alvo
            novo_array[pos_novo] = array[pos_array]
            pos_novo += 1
        end
        pos_array += 1
    end
    return novo_array
end
instrutores = ["Ivo", "Leo", "Raphael", "Fabio"]
print "Array inteiro: #{instrutores}"
puts
instrutores = remove_da_posicao(instrutores, 2)
print "Removendo elemento [2]: #{instrutores}"
puts
instrutores = ["Ivo", "Leo", "Raphael", "Fabio"]
instrutores = remove_da_posicao(instrutores, 3)
print "Tentando remover ultimo elemento: #{instrutores}"
puts
instrutores = ["Ivo", "Leo", "Raphael", "Fabio"]
instrutores = remove_da_posicao(instrutores, 1)
print "Removendo elemento [1]: #{instrutores}"
puts