# encoding: UTF-8

def da_boas_vinda
    puts "/****************/"
    puts "/ Jogo de Forca */"
    puts "/****************/"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n"
    puts "Começaremos o jogo para você, #{nome}"
    nome
end

def desenha_forca(erros)
    cabeca = "   "
    corpo  = "   "
    pernas = "   "
    bracos = "   "
    
    if erros >= 1
        cabeca = "(_)"
    end
    
    if erros >= 2
        bracos = " | "
        corpo = "|"
    end
    
    if erros >= 3
        bracos = "\\|/"
    end
    
    if erros >= 4
        pernas = "/ \\"
    end

    puts "  _______          "
    puts " |/    \\|         "
    puts " |     #{cabeca}   "
    puts " |     #{bracos}   "
    puts " |      #{corpo}   "
    puts " |     #{pernas}   "
    puts " |                 "
    puts "_|___              "
end

def avisa_atual_campeao dados
    puts "Nosso campeão atual é: #{dados[0]} com #{dados[1]} pontos."
end

def nao_quer_jogar?
    puts "\n\n\n\n"
    puts "Deseja jogar novamente? (S/N)"
    nao_quero_jogar = gets.strip.downcase
    nao_quero_jogar == "n"
end

def cabecalho_de_tentativa(chutes, erros, mascara)
    puts "\n\n"
    puts "Palavra secreta: #{mascara}"
    puts "Erros até agora: #{erros}"
    puts "Chutes até agora: #{chutes}"
end

def pede_um_chute
    puts "\n\n"   
    puts "Entre com a letra ou palavra"
    chute = gets.strip.downcase
    puts "\n\n"
    puts "Será que acertou? Você chutou #{chute}"
    chute
end

def avisa_chute_repetido chute
     puts "Você já chutou #{chute}"
end

def avisa_letra_nao_encontrada
    puts "Letra não encontrada!"
end

def avisa_letra_encontrada total_encontrado
    puts "Letra encontrada #{total_encontrado} vezes!"
end

def avisa_acertou_palavra
    puts "\nParabéns, você ganhou!"
    puts "       ___________      "
    puts "      '._==_==_=_.'     "
    puts "      .-\\:      /-.    "
    puts "     | (|:.     |) |    "
    puts "      '-|:.     |-'     "
    puts "        \\::.    /      "
    puts "         '::. .'        "
    puts "           ) (          "
    puts "         _.' '._        "
    puts "        '-------'       "
end

def avisa_errou_palavra
    puts "Que pena... errou!"
end

def avisa_pontos pontos
    puts "Você ganhou #{pontos} pontos."
end

def avisa_escolhendo_palavra
    puts "Sorteando uma palavra secreta..."
end

def avisa_palavra_escolhida  palavra_secreta
    puts "Escolhida uma palavra com #{palavra_secreta.size} letras... Boa sorte!"
    palavra_secreta      
end

def avisa_pontos_totais pontos
    puts "Você possui #{pontos} pontos."
end 