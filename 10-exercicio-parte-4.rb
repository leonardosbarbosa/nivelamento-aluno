# Dimensões do retângulo
altura = 9
largura = 17

esq = 1 # Variável que irá percorrer da esquerda para a direita para imprimir o V
dir = largura # Variável que irá percorrer da direita para a esquerda para imprimir o V

for x in (1..altura)
    for y in (1..largura)
        if (y == esq || y == dir) && dir >= esq
            print "_"
        else
            print "*"
        end
    end
    esq += 1
    dir -= 1
    puts
end