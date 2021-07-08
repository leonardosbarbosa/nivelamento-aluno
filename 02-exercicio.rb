qtdeHorasNoDia = 24
qtdeDiasNoAno = 365
minutosEmUmaHora = 60
segundosEmUmMinuto = 60
minhaIdade = 20

puts "Quantas horas há em um ano?"
puts "Um ano possui " + (qtdeHorasNoDia*qtdeDiasNoAno).to_s + " horas", ""

puts "Quantos minutos há em uma década?"
anosEmUmaDecada = 10
puts "Uma década possui " + (minutosEmUmaHora*qtdeHorasNoDia*qtdeDiasNoAno*anosEmUmaDecada).to_s + " minutos", ""

puts "Qual é a sua idade em segundos?"
puts "Minha idade equivale a " + (segundosEmUmMinuto*minutosEmUmaHora*qtdeHorasNoDia*qtdeDiasNoAno*minhaIdade).to_s + " segundos", ""

puts "Quantos chocolates você pretende comer na vida?"
chocolatesPorMes = 3
qtdeMesesNoAno = 12
qtdeAnosQuePretendoViver = 80;
puts "Nos próximos 60 anos, pretendo comer " + (chocolatesPorMes*qtdeMesesNoAno*(qtdeAnosQuePretendoViver - minhaIdade)).to_s + " chocolates", ""

puts "Se minha idade é de 1232 milhões de segundos, qual é minha idade em anos?"
puts "Minha idade é de " + ((1232*1000000)/segundosEmUmMinuto/minutosEmUmaHora/qtdeHorasNoDia/qtdeDiasNoAno).to_s + " anos"