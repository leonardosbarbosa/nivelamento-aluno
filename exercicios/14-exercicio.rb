def existe_no_array(array, elemento)
    for n in (0..array.size-1)
        if array[n] == elemento
            return true
        end
    end
    return false
end

def valida_aposta(chute, limite_inicio, limite_fim)
    if (chute != "0" && chute.to_i == 0) || chute.include?(".")
        return "O valor digitado deve ser um número inteiro!"
    elsif chute.to_i < limite_inicio || chute.to_i > limite_fim
        return "O valor digitado deve ser entre #{limite_inicio} e #{limite_fim}!"
    else
        return nil # Valor é válido
    end
end

def sortear_numeros(qtd, limite_inicio, limite_fim)
    sorteados = []
    n = 0
    while n < qtd
        num_aleatorio = rand(limite_inicio..limite_fim)
        if existe_no_array(sorteados, num_aleatorio)
            next
        else
            sorteados[n] = num_aleatorio
            n += 1
        end
    end
    return sorteados
end
def obter_apostas(qtd, limite_inicio, limite_fim)
    apostados = []
    n = 0
    while n < qtd
        print "Digite o #{n+1}º número da aposta: "
        chute = gets.chomp
        mensagem_erro = valida_aposta(chute, limite_inicio, limite_fim) 
        if mensagem_erro != nil
            puts mensagem_erro
        elsif existe_no_array(apostados, chute.to_i)
            puts "Você já apostou esse número! Por favor, escolha outro."
        else
            apostados[n] = chute.to_i
            n += 1
        end
    end
    return apostados
end
def verificar_acertos(sorteados, apostados)
    acertados = []
    pos_sort = 0
    pos_apost = 0
    pos_acert = 0
    while pos_apost < apostados.size 
        while pos_sort < sorteados.size       
            if apostados[pos_apost] == sorteados[pos_sort]
                acertados[pos_acert] = sorteados[pos_sort]
                pos_acert += 1
            end
            pos_sort += 1
        end
        pos_sort = 0
        pos_apost += 1
    end
    return acertados
end

def mega_sena()
    sorteados = sortear_numeros(6, 1, 60)
    apostados = obter_apostas(6, 1, 60)
    acertados = verificar_acertos(sorteados, apostados)
    
    puts "Numeros sorteados: #{sorteados.to_s()}"
    puts "Numeros apostados: #{apostados.to_s()}"
    puts "Acertos: #{acertados.to_s()}"
end

mega_sena()