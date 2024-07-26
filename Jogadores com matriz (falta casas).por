programa{
	inclua biblioteca Util --> u
	
  	funcao inicio() {
  	

    inteiro Tab1[25], i = 0
    inteiro Tab2[25], j = 0
    inteiro jogador1 = 1, jogador2 = 1, jogadorA = 0
    inteiro dado, ganhador1 = 0 , ganhador2 = 0

    escreva("\n INICIALIZAR JOGO \n")
		enquanto (jogadorA == 0)
		{

		    
		    enquanto(jogadorA <= 20)
			{
				
		    		
				leia(jogadorA)
			
		  		se(jogadorA == 1)
		  		{
		  		
		  			escreva("\n VEZ JOGADOR 1: " , "\n sua casa atual: ", jogador1)
		  			dado = u.sorteia(1, 6)
					escreva("\n seu Dado é: ", dado)
		  			jogador1 = dado + jogador1
		  			escreva("\n JOGADOR 1 SUA CASA É: ", jogador1,"\n")
		  			i = jogador1
		  			Tab1[i] = i
		  		}
		  		
		  		
		  		se(jogadorA == 2)
		  		{	
		  			escreva("\n VEZ JOGADOR 2: " , "\n sua casa atual: ", jogador2) 
		  			dado = u.sorteia(1, 6)
					escreva("\n seu Dado é: ", dado)
		  			jogador2 = dado + jogador2
		  			escreva("\n JOGADOR 2 SUA CASA É: ", jogador2, "\n")
		  			j = jogador2
		  			Tab2[j] = j
		  			
		  			jogadorA = 0
		  		}
				
		  		se(jogador1 >= 20){
		  			jogadorA = 21
		  			ganhador1++
		  		}

				se(jogador2 >= 20){
		  			jogadorA = 21
		  			ganhador2++
		  		}

				

		  		
		  	}
		  		
		 
		  		
		}	
	escreva("O Placar atual é: \n") 
	escreva("\n Jogador 1:",  ganhador1, "\n")
	escreva("\n Jogador 2:",  ganhador2, "\n")
	
	
	}
		  
	
  	 
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 407; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */