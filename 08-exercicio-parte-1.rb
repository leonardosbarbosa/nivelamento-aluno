#  1) Faça um programa para calcular a boa e velha tabuada.
#  Pergunte ao usuário qual o número que ele quer o cálculo da tabuada e imprima na tela os resultados.

def imprimeTabuada(numero)
    for contador in (1..10)
    puts "#{numero} x #{contador} = #{numero * contador}"
    end
end

print "Digite um número: "
numero = gets.chomp.to_i

puts "","Tabuada do #{numero}:"

imprimeTabuada(numero)