# 3) Defina uma função “altura_escada” que deve receber um número inteiro para representar a altura da escada 
# e deve retornar um array de strings para representar graficamente a escada.

# Valide o parâmetro da altura da escada, que deve ser um número maior ou igual a 1.
# Caso contrário, a função deve retornar um array vazio.

def altura_escada(altura)
    escada = []
    if altura < 1
        return escada
    end  
    linha = 0
    coluna = 0
    while linha < altura
        while coluna < altura
            if coluna > linha
                escada[linha] = escada[linha].to_s + "_"
            else
                escada[linha] = escada[linha].to_s +  "#"
            end
            coluna += 1
        end
        coluna = 0
        linha += 1
    end
    return escada
end

# puts altura_escada(3)
# puts altura_escada(5)
# puts altura_escada(0)