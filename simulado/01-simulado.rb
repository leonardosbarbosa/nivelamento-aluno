# 1) Cada maça custa R$ 0,30, porém, se levar uma dúzia ou mais, o preço de cada uma baixa para R$ 0,25.
# Considerando essa precificação, escreva uma função chamada "preco_maca" que deve receber como parâmetro a quantidade de maçãs e deve retornar o valor em reais a ser pago por elas.
# Valide se a quantidade é um número maior que zero, se não for, a função deve retornar nil.

def preco_maca(qtd_macas)
    preco_unitario = 0.30
    if qtd_macas <= 0
        return nil
    end
    if qtd_macas >= 12
        preco_unitario = 0.25
    end
    return preco_unitario * qtd_macas
end

# # TESTES
# puts(preco_maca(6)) # deve imprimir 1.8 ou 1.799999...
# puts(preco_maca(12)) # deve imprimir 3.0
# puts(preco_maca(10)) # deve imprimir 3.0
# puts(preco_maca(5)) # deve imprimir 1.5
# puts(preco_maca(16)) # deve imprimir 4.0
# puts(preco_maca(-2)) # deve imprimir nil (espaço em branco)