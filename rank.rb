# encoding: UTF-8

def sorteia_palavra_secreta 
	avisa_escolhendo_palavra
	palavras = File.read("dicionario.txt")
	todas_as_palavras = palavras.split "\n"
	numero_aleatorio = rand(todas_as_palavras.size)
	palavra_secreta = todas_as_palavras[numero_aleatorio].downcase
	avisa_palavra_escolhida palavra_secreta
end

def salva_rank nome, pontos_totais
	conteudo = "#{nome}\n#{pontos_totais}"
	File.write "rank.txt", conteudo
end

def le_rank
	conteudo = File.read "rank.txt"
	dados = conteudo.split "\n"
end