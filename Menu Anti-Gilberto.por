programa
{
	
	funcao inicio()
	{
		
		inteiro jogadorUm, jogadorDois, vencedorContadorUm = 0, vencedorContadorDois = 0 
		real menu = 0.0

		enquanto(menu == 0.0){
			
			escreva("\n\nBem vindo ao jogo \nMOVIE TO MOVE!!\n\n PARA JOGAR Digite 1\n VER O PALCAR Digite 2\n FECHAR Digite 3\n\n")

			leia(menu)

			se(menu == 1.0){

				
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
 * @POSICAO-CURSOR = 802; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */