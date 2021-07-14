# Estamos vivendo uma pandemia e o governador pediu um sistema para indicar qual a cor da fase pandêmica em que está o Estado.
# A cor da fase pandêmica é definida baseada em três valores:
# 1) A taxa de vacinação da população.
# 2) O fator de transmissão do vírus.
# 3) A taxa de ocupação dos leitos de UTI.
# As regras para definição de cada fase são as seguintes:
# - FASE AZUL: quando que a taxa de vacinação estiver acima de 80% (percentual de imunização coletiva)
# - FASE VERDE: quando a taxa de ocupação de leitos estiver abaixo ou igual a 50%, porém com fator de transmissão menor que 1.
# - FASE AMARELA: quando a taxa de ocupação de leitos estiver acima de 50%, porém com fator de transmissão menor que 1.
# - FASE LARANJA: quando a taxa de ocupação de leitos estiver acima de 65%, porém com fator de transmissão menor que 1.
# - FASE VERMELHA: quando a taxa de ocupação de leitos estiver acima de 80% ou quando o fator de transmissão for maior ou igual a 1.
# - FASE ROXA: quando a taxa de ocupação de leitos estiver acima de 90%.
# Para atender o sistema, defina uma função chamada 'fase_pandemica' que deve receber três parâmetros (taxa de vacinação, fator de 
#    transmissão e taxa de ocupação de leitos) e baseado nas regras descritas acima, retornar uma string com o nome da cor da fase da pandemia.

def fase_pandemica(taxaVacinacao, fatorTransmissao, taxaOcupacao)
    if taxaOcupacao > 0.9
        return "roxa"
    elsif taxaOcupacao > 0.8 || fatorTransmissao >= 1
        return "vermelha"
    elsif taxaOcupacao > 0.65 && fatorTransmissao < 1
        return "laranja"   
    elsif taxaOcupacao > 0.5 && fatorTransmissao < 1
        return "amarela"    
    elsif taxaOcupacao <= 0.5 && fatorTransmissao < 1 
        return "verde"
    elsif taxaVacinacao > 0.8
        return "azul"         
    end
end

def validaDados(taxaVacinacao, fatorTransmissao, taxaOcupacao)
    if taxaVacinacao < 0 || taxaVacinacao > 1
        return "A taxa de vacinação deve ser um número entre 0.0 e 1.0"
    elsif !(fatorTransmissao >= 0) 
        return "O fator de transmissão dever ser um número maior ou igual a zero"
    elsif taxaOcupacao < 0 || taxaOcupacao > 1
        return "A taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0"
    else
        return nil    
    end   
end

print "Digite a taxa de vacinação da população: "
taxa = gets.to_f
print "Digite o fator de transmissão do vírus: "
fator = gets.to_f
print "Digite a taxa de ocupação dos leitos: "
ocupacao = gets.to_f
puts

mensagemErro = validaDados(taxa, fator, ocupacao)

if (mensagemErro == nil)
    puts "A cor da fase atual é #{fase_pandemica(taxa, fator, ocupacao)}"
else
    puts "ERRO!"
    puts mensagemErro
end

# TESTES
# fase_pandemica (0.3, 2, 1) -> retorna roxa
# fase_pandemica (0.1, 2, 0.81) -> retorna vermelha
# fase_pandemica (0.1, 0.9, 0.66) -> retorna laranja
# fase_pandemica (1, 0.8, 0.51) -> retorna amarela
# fase_pandemica(0.1, 0.7, 0.5) -> retorna verde
# fase_pandemica (0.1, 2, 0.81) -> retorna azul