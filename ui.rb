def boas_vindas
	puts "Bem vindo ao jogo da forca."
	puts "Qual seu nome?"
	nome = gets.strip
	puts "\n\n\n\n\n"
	puts "Começaremos o jogo para você, #{ nome }"
	nome
end

def nao_quer_jogar?
	puts "Deseja jogar novamente?(S/N)"
	quero_jogar = gets.strip
	nao_quero_jogar = quero_jogar.upcase == "N"
end

def cabecalho_de_tentativa(erros, chutes, mascara)
	puts "\n\n\n\n"
	puts "Total de erros:#{erros}"
	puts "Chutes até agora:#{ chutes } "
	puts "Palavra secreta: #{mascara}"
end

def pede_um_chute
	puts "Entre com uma letra ou uma palavra"
	chute = gets.strip
	puts "Será que acertou? Você chutou,#{ chute }"
	chute
end

def avisa_chute_efetuado chute
	puts "Você já chutou o #{chute}"
end

def avisa_letra_nao_encontrada
	puts "Letra não encontrada."
end

def avisa_letra_encontrada total_encontrado
	puts "Letra encontrada, #{ total_encontrado } vezes."
end

def avisa_acertou_palavra
	puts "Você acertou!"
end

def avisa_errou_palavra
	puts "Que pena...errou"
end

def avisa_pontos pontos
	puts "Você ganhou #{ pontos } pontos."
end

def avisa_escolhendo_palavra
	puts "Escolhendo a palavra secreta..."
end

def avisa_palavra_escolhida(palavra_secreta)
	puts "Palavra secreta com #{ palavra_secreta.size } letras... Boa sorte!"
	palavra_secreta
end