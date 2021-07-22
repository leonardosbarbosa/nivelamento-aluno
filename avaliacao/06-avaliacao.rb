# 6) O governo do Estado de SP registra o número de mortes por covid diariamente. No entanto, para publicar os resultados de modo mais amigável, 
#     é necessário calcular a média móvel semanal.
#     Para auxiliar o secretário de Saúde, faça uma função chamada "calcula_media_movel", que deve receber como parâmetros um array com a série 
#     de registros de mortes diária por covid e o número de dias de intervalo para calcular as médias. 

#     Essa função deve retornar um novo array sendo que o valor de cada elemento é a média de mortes com base no número de dias de intervalo 
#     informado no segundo parâmetro. OBS.: O último elemento do novo array deve ser a média dos últimos números da série de registros que sobrarem.

def calcula_media_movel(mortes_diarias, intervalo)
    media = []
    n = 0
    contador = 0
    soma = 0.0
    m = 0
    for n in (0..mortes_diarias.size-1)
        if contador < intervalo
            soma += mortes_diarias[n]
            contador += 1           
        else           
            media[m] = soma / contador
            m += 1
            soma = mortes_diarias[n].to_f           
            contador = 1   
        end       
        #n += 1
    end
    if soma > 0.0
        media[m] = mortes_diarias[n] / contador       
    end
    return media
end

# mortes_diaria = [
#     263, 240, 266, 259, 253, 257, 261, 
#     239, 274, 264, 260, 262, 261, 273, 
#     270, 278, 266, 277, 290, 294, 289, 
#     294, 277, 293, 297, 247, 278, 297, 
#     298, 262, 266, 304, 246, 279, 281
# ]

# mortes_media_movel = calcula_media_movel(mortes_diaria, 7)
# print(mortes_media_movel)
# print("\n")
# # deve imprimir
# # [257.0, 261.85714285714283, 280.57142857142856, 283.2857142857143, 276.57142857142856]
# mortes_media_movel = calcula_media_movel(mortes_diaria, 5)
# print(mortes_media_movel)
# print("\n")
# # deve imprimir
# # [256.2, 259.0, 265.2, 281.0, 290.0, 276.4, 275.2]
# mortes_media_movel = calcula_media_movel(mortes_diaria, 10)
# print(mortes_media_movel)
# print("\n")
# # deve imprimir
# # [257.6, 273.1, 283.2, 275.2]