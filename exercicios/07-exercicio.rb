# jogo de adivinhação

# vamos fazer o computador pensar num número (0 a 100)
# e depois vamos pedir para o jogador tentar adivinhar esse número

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

chute = gets.chomp

mensagemErro = validaChute(chute)

if mensagemErro != nil # Há alguma mensagem de erro de validação
    puts mensagemErro
else
    chute = chute.to_i
    if numero == chute
        puts "Acertou!"
    else
        puts "Errou!"
    end
end