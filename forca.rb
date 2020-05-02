require_relative 'ui'
 
def pede_um_chute_valido chutes, erros
	cabecalho_de_tentativa erros, chutes
	loop do
		chute  = pede_um_chute
		if chutes.include? chute
			avisa_chute_efetuado chute
		else
			return chute
		end
	end
end

def joga(nome)
	palavra_secreta = escolha_palavra_secreta

	erros = 0
	chutes = []
	pontos_ate_agr = 0

	while erros < 5
		chute = pede_um_chute_valido chutes, erros
		chutes << chute

		chutou_uma_letra = chute.size == 1

		if chutou_uma_letra
			letra_procurada = chute[0]
			total_encontrado = palavra_secreta.count letra_procurada

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
				pontos_ate_agr += 100
				break
			else
				avisa_errou_palavra
				pontos_ate_agr -= 30
				erros += 1
			end
		end
	end

	avisa_pontos pontos_ate_agr
end

def jogo_da_forca
	nome = boas_vindas
	loop do
		joga(nome)
		if nao_quer_jogar?
			break
		end

	end
end

