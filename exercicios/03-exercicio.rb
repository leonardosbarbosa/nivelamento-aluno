puts "1. retornar a quantidade de horas que tem em uma quantidade de anos, que será um valor informado para a função"

def calculaHorasEmQtdeAnos(qtdeAnos)
totalDias = qtdeAnos*365
totalHoras = totalDias*24
return totalHoras
end

puts calculaHorasEmQtdeAnos(2).to_s + " horas = 2 anos", ""


puts "2. retornar a quantidade de minutos que tem em uma quantidade de décadas, que será um valor informado para a função"

def calculaMinutosEmQtdeDecadas(qtdeDecadas)
#    60*24*365*10
totalAnos = qtdeDecadas * 10
totalMinutos = totalAnos * 365 * 24 * 60
return totalMinutos
end

puts calculaMinutosEmQtdeDecadas(1).to_s + " minutos = 1 década", ""


puts "3. retornar a idade em valor de segundos, sendo que a idade deve ser informada para a função"

def calculaIdadeEmSegundos(idade)
totalDias = idade * 365
return totalSegundos = totalDias * 60 * 60 * 24
end

puts calculaIdadeEmSegundos(20).to_s + " segundos = 20 anos", ""


puts "4. retornar a quantidade de anos que tem em uma quantidade de segundos, que será um valor informado para a função"

def calculaAnosEmQtdeSegundos(qtdeSegundos)
    totalAnos = qtdeSegundos.to_f/365/60/60/24
    return totalAnos
end

segundosEmUmAno = 31536000 # Quantidade de segundos em 1 ano
segundosEmTresAnos = segundosEmUmAno * 3 # Quantidade de segundos em 3 anos

puts calculaAnosEmQtdeSegundos(segundosEmTresAnos).to_s + " anos possui " + (segundosEmTresAnos).to_s + " segundos", ""