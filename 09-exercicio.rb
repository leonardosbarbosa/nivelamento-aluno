# jogo de adivinhação

# vamos fazer o computador pensar num número (0 a 100)
# e depois vamos pedir para o jogador tentar adivinhar esse número

# faça uma nova versão em que o jogador receba a informação, após chutar o número, se o chute foi maior ou menor que o número pensado.
# A seguir, ele ganha uma nova tentativa, de modo que o jogo somente vai terminar quando ele acertar.
# Ao final, após acertar, informe o número de tentativas que o jogador teve para acertar.
# Observação: valide o chute do jogador, ignorando a tentativa caso ele informe um numero invalido.

def validaChute(chute)
    if (chute != "0" && chute.to_i == 0) || chute.include?(".")
        return "O valor digitado deve ser um número inteiro!"
    end   
    chute = chute.to_i  
    if chute < 0 || chute > 100
        return "O valor digitado deve ser entre 0 e 100!"
    else
        return nil # Valor é válido
    end    
end

puts "Bem-vindo ao jogo de adivinhação!"
puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"

# computador pensando no número...
numero = rand(0..100)
puts "(" + numero.to_s + ")"

tentativas = 1
chute = -1

while chute.to_i != numero
puts "Digite um número:"
chute = gets.chomp

mensagemErro = validaChute(chute)
    # Excecuta caso haja alguma mensagem de erro de validação
    if mensagemErro != nil 
        puts "", mensagemErro, ""

    # Executa caso o valor seja válido
    else
        chute = chute.to_i
        if numero == chute
            puts "", "Parabéns, você acertou!"
            puts "Quantidade de tentativas: #{tentativas}"
        else
            puts "", "Você errou!"
            if chute > numero
                print "Seu chute foi maior que o número pensado. "
            else
                print "Seu chute foi menor que o número pensado. "
            end
            tentativas += 1
            puts "Tente novamente!", ""
        end
    end
end