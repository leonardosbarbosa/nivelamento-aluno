print "Digite o tamanho da base da pirâmide: "
base = gets.to_i

resto = 1 # Todo número impar / 2 possui resto 1

if base % 2 == 0
    resto = 0
end

for x in (1..base)
    for y in (1..x)
        if x % 2 == resto
            print "*"
        end
    end
    if x % 2 == resto
        puts
    end
end