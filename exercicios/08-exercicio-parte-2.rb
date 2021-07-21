# 2) Faça um programa para calcular o Mínimo Múltiplo Comum (MMC) entre dois números inteiros.
# Como o próprio nome diz, o MMC é o menor número inteiro que é múltiplo comum de outros números.
# Perguntar ao usuários os dois números inteiros que ele quer saber o MMC.
# Ex.:
# MMC 2, 3 = 6
# MMC 2, 10 = 10
# MMC 5, 8 = 40

def calculaMMC(num1, num2)
    maior = num1
    if num2 > num1
        maior = num2
    end
    mmc = maior
    until mmc % num1 == 0 && mmc % num2 == 0
        mmc = mmc + 1
    end
    return mmc
end

print "Digite o primeiro número: "
num1 = gets.chomp.to_i
print "Digite o segundo número: "
num2 = gets.chomp.to_i
puts "O MMC de #{num1} e #{num2} é: #{calculaMMC(num1,num2)}"