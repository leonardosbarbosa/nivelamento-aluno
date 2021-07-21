# 4) Defina uma função chamada “imprimir_tabela”, que deve receber um número inteiro como parâmetro e deve imprimir na tela uma tabela de números seguindo a seguinte regra:
# 1
# 2 4
# 3 6 9
# ...
# n*1 n*2 n*3 ... n*n
# Valide se o parâmetro é um número maior que zero, se não for, a função deve imprimir na tela "ARGUMENTO INVÁLIDO"

def imprimir_tabela(numero)
    if numero <= 0
        puts "ARGUMENTO INVÁLIDO"
    else
        for m in (1..numero)
            for n in (1..m)
                print "#{m*n} "
            end
            puts
        end
    end
end

# # TESTES
# imprimir_tabela(5) # deve ser impresso na tela a seguinte tabela:
# #  1
# #  2 4
# #  3 6 9
# #  4 8 12 16
# #  5 10 15 20 25

# imprimir_tabela(0) # deve ser impresso na tela: 
# # ARGUMENTO INVÁLIDO
# puts
# imprimir_tabela(3)
# puts
# imprimir_tabela(7)