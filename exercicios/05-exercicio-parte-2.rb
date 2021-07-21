# Parte 2:
# Escreva um programa que pergunte o nome e a idade do usuário. 
# Escreva também uma função que calcula a quantidade de batimentos cardíacos (uma estimativa) baseado na quantidade de dias que o usuário viveu. 
# Considere uma média de 80 batimentos por minuto. Essa função deve receber a idade do usuário como parâmetro.

def calculaBatimentosCardiacos(idade)
mediaBatimentos = 80
diasVividos = idade * 365
return diasVividos * 24 * 60 * mediaBatimentos
end

print "Digite seu nome: "
nome = gets.chomp
print "Digite sua idade: "
idade = gets.to_i

estimativaBatimentos = calculaBatimentosCardiacos(idade)

puts "#{nome}, seu coração já bateu aproximadamente #{estimativaBatimentos} vezes!"