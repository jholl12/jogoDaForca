# encoding: UTF-8   

require_relative "ui"
require_relative "rank"

def conta texto, caracter 
    total_encontrado = 0

    for letra in 0..texto.chars
        if letra == caracter
            total_encontrado += 1
        end
    end

    total_encontrado
end

def pede_um_chute_valido chutes, erros, mascara
    cabecalho_de_tentativa chutes, erros, mascara
    loop do
        chute = pede_um_chute
        if chutes.include? chute
            avisa_chute_repetido chute
        else
            return chute
        end
    end
end

def palavra_mascarada palavra_secreta, chutes
    mascara = ""
    for letra in palavra_secreta.chars
        if chutes.include? letra
            mascara += letra
        else
            mascara += "_"
        end
    end
    mascara
end

def jogar
    palavra_secreta = sorteia_palavra_secreta

    pontos = 0
    erros = 0
    chutes = []

    while erros < 5
        desenha_forca erros
        mascara = palavra_mascarada palavra_secreta, chutes
        chute = pede_um_chute_valido chutes, erros, mascara
        chutes << chute

        chutou_uma_unica_letra = chute.size == 1
        if chutou_uma_unica_letra
           total_encontrado = palavra_secreta.count(chute[0])

           if total_encontrado == 0
                avisa_letra_nao_encontrada
                erros += 1
           else
                avisa_letra_encontrada total_encontrado
           end
        else
            acertou = chute == palavra_secreta
            if acertou
                avisa_acertou_palavra
                pontos += 100
                break
            else
                avisa_errou_palavra
                pontos -= 30
                erros += 1
            end 
        end
    end

    avisa_pontos pontos
    pontos
end

def jogo_da_forca
    nome = da_boas_vinda
    pontos_totais = 0

    avisa_atual_campeao le_rank

    loop do 
        pontos_totais += jogar
        avisa_pontos_totais pontos_totais

        if le_rank[1].to_i   < pontos_totais
            salva_rank nome, pontos_totais
        end
        break if nao_quer_jogar?
    end
end