# Parte 1:
# Considere os métodos (as funções) escritos nos exercícios anteriores:
# Os métodos que calculam:
# - o diâmetro de um círculo é 2x o seu raio
# - o comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
# - a área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
# Escreva um programa que use esses métodos, porém, de tal forma que o valor do raio do círculo seja perguntado ao usuário.

def calculaDiametro(raio)
    return raio * 2
end

def calculaComprimento(raio)
   return calculaDiametro(raio) * Math::PI
end

def calculaArea(raio)
    return (raio**2) * Math::PI
end

print "Digite o valor do raio: "
raio = gets.to_f

puts "Diâmetro de um círculo de raio #{raio}: #{calculaDiametro(raio)}", ""

puts "Comprimento de um círculo de raio #{raio}: #{calculaComprimento(raio)}", ""

puts "Área de um círculo de raio #{raio}: #{calculaArea(raio)}", ""