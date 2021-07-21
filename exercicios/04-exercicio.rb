# Sabendo que:
# 1) O diâmetro de um círculo é 2x o seu raio.
# 2) O comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
# 3) A área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
# Escreva funcões para calcular o diâmetro, o comprimento e a área de um círculo com base no valor do seu raio.
# Ou seja, escreva uma função para cada cálculo, considerando que o raio será informado na chamada de cada função.



def calculaDiametro(raio)
    return raio * 2
end

def calculaComprimento(raio)
   return calculaDiametro(raio) * Math::PI
end

def calculaArea(raio)
    return (raio**2) * Math::PI
end

raio = 5

# Imprimindo usando o recurso de interpolação

puts "Diâmetro de um círculo de raio #{raio}: #{calculaDiametro(raio)}", ""

puts "Comprimento de um círculo de raio #{raio}: #{calculaComprimento(raio)}", ""

puts "Área de um círculo de raio #{raio}: #{calculaArea(raio)}", ""
