programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		
		inteiro jogadorUm, jogadorDois, vencedorContadorUm = 0, vencedorContadorDois = 0, tabuleiroJogadores[20]
		inteiro dadoUm, dadoDois, primeiraJogada, posicaoUm = 1, posicaoDois = 1
		real menu = 0.0

		enquanto(menu == 0.0){
			
			escreva("\n\nBem vindo ao jogo \nMOVIE TO MOVE!!\n\n PARA JOGAR Digite 1\n VER O PALCAR Digite 2\n FECHAR Digite 3\n\n")

			leia(menu)

			se(menu == 1.0){

				dadoUm = Util.sorteia(1, 6)
				dadoDois = Util.sorteia(1, 6)

				escreva("Olá jogadores, atualmente estão na casa inicial, a cada um sera sorteado um lado do dado.")
				escreva("\n A posição atual do jogador um é: ", posicaoUm, "\n A posição atual do jogador um é: ", posicaoDois)
	
				
				primeiraJogada = Util.sorteia(1, 2)

				se(primeiraJogada == 1){
					escreva("\nO primeiro jogador vai começar primeiro, o dado soteado é: ", dadoUm)
				}senao{
					escreva("\nO segundo jogador vai começar primeiro, o dado soteado é: ", dadoDois)
				}

					
				vencedorContadorDois++
				menu = 0.0
			}senao se(menu == 2.0){

				escreva("\nO placar dos jogardores são: \n\n   Jogador Um: ",vencedorContadorUm,"\n   Jogador Dois: ",vencedorContadorDois, "\n")

				
				menu = 0.0
				
				  }senao se(menu == 3.0){

						menu = 10.0
				  	
				  }senao{
				  	 	escreva("\nO numero digitado foi incorreto você será redirecionado para o menu incial e digitar o numero novamente.")
				  	 	menu = 0.0
				  }
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 930; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */