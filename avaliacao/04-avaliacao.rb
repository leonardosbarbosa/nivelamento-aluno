# 4) Defina a função “altura_arvore_utopica”, que recebe a altura inicial da árvore utópica plantada no final do outono 
# e a quantidade de ciclos de crescimento, e que retorne a altura resultante após a quantidade de ciclos de crescimento informada.
# Valide a altura inicial (que não pode ser zero ou menor) e a quantidade de ciclos (que não pode ser negativo). 
# Caso a validação falhar, a função deve retornar nil.

def altura_arvore_utopica(altura_inicial, ciclos)
    if altura_inicial <= 0 || ciclos < 0
        return nil
    elsif ciclos == 0
        return altura    
    else
        n = 1
        altura_final = altura_inicial
        while n <= ciclos 
            if n % 2 != 0 
                altura_final *= 2
            else   
                altura_final += 1  
            end
            n += 1
        end
        return altura_final    
    end
end

# puts(altura_arvore_utopica(2, 5))
# # deve imprimir 22 
# # pois a altura da árvore iniciou com 2, após 1º ciclo foi para 4, 
# # após 2º foi para 5, após 3º foi para 10, após 4º foi para 11 e 
# # após 5º foi para 22.
# puts(altura_arvore_utopica(0, 5) == nil)
# # deve imprimir nada, pois retornou nil 
# puts(altura_arvore_utopica(10, -1) == nil)
# # deve imprimir nada, pois retornou nil 
# puts(altura_arvore_utopica(2, 4))
# # deve imprimir 11