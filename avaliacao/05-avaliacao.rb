# 5) O número PI ou 3.14159... pode ser obtido através de várias fórmulas. Uma forma simples de obtê-lo é pela fórmula de Leibniz, 
# que diz que a convergência da seguinte série infinita é igual a PI:
# PI = 4/1 - 4/3 + 4/5 - 4/7 + 4/9 - 4/11 ...
# Escreva uma função chamada "calcula_pi" que recebe o número de termos a serem usados na fórmula de Leibniz para obter o valor de PI. 
# O resultado do cálculo deve ser retornado pela função.
# Valide o número de termos. Deve ser um número inteiro maior ou igual 1. Se a validação falhar, a função retorna nil.

def calcula_pi(termos)   
    if termos < 1
        return nil
    else
        divisor = 1.0
        resultado = 0.0   
        contador = 1
        subtrair = nil
        while contador <= termos
            if subtrair == nil
                resultado = 4/divisor   
                subtrair = true
            elsif subtrair
                resultado -= 4.0/divisor
                subtrair = false
            else   
                resultado += 4.0/divisor
                subtrair = true
            end
            divisor += 2.0
            contador += 1
        end
        return resultado
    end    
end

# puts(calcula_pi(4))
# deve retornar o valor de (4/1 - 4/3 + 4/5 - 4/7), ou seja, 2.8952380952380956
# note que a expressão tem 4 termos, pois 4 foi o número de termos informado no parâmetro.

