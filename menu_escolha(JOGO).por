programa {
  inclua biblioteca Util --> u
  funcao inicio() {

    inteiro placar1 = 0, placar2 = 0 
    inteiro jogador1 = 1, jogador2 = 1, jogadorA = 0
    inteiro dado, dado2, ganhador1 = 0 , ganhador2 = 0, condicao1 = 1
    inteiro menu = 0, iniciar, finaljogo, verificarplacar
    inteiro Dado1 = 0, Dado2 = 0

	enquanto(menu == 0)
	{
      //Apresentação do jogo.
      escreva("Bem vindo ao MOVE TO MOVIE")
      
      //Menu do jogo
      escreva("\n Digite:")
      escreva("\n Digite 1 para INICIALIZAR")
      escreva("\n Digite 2 para VERIFICAR PLACAR")
      escreva("\n Digite 3 para FINALIZAR JOGO\n")
      leia(menu)

     
          //Inicializando Menus
          //Escolhido numero 1 do menu: INICIALIZAR JOGO
          se(menu == 1 ou menu <= 3)
          {
          	se(menu == 1)
	          {
	            //Desenvolvimento Jogo
	            escreva("\n Jogo inicializado")
	            escreva("\n O dado sera jogado para ver qual jogador começa a partida: \n")
	            escreva("\n Digite '1' para jogador1 iniciar e '2' para jogador2 iniciar: \n")

			    	enquanto (jogadorA == 0)//repetição que vai se manter ate que alguem termine o jogo e entre no se do final
				{
		    			enquanto(jogadorA <= 20)
					{
				//atualmente precisa digitar 1 e 2 para intercalar entre os jogadores
					leia(jogadorA)
			
			  		se(jogadorA == 1)
			  		{
			  			escreva("\n VEZ JOGADOR 1: " , "\n sua casa atual: ", jogador1)
			  			dado = u.sorteia(1, 6)
						escreva("\n seu Dado e: ", dado)
			  			jogador1 = dado + jogador1
			  		
						se(jogador1 == 2) 
			        		{
			                 	jogador1 = jogador1 + 3
			        		}
	            			se(jogador1 == 3)
	           		 	{
	                     		dado2 = u.sorteia(1,3)
	              			 	jogador1 = jogador1 + dado2
	                     		escreva ("\n O resultado do dado de 3 lados e: ", dado2)
	          			}
	                		se(jogador1 == 7)
	                		{
	                    	   jogador1 = jogador1 + 0    //definir uma forma de pular uma jogada
	                		}    
	                    	se(jogador1 == 10) 
	                  		{
	                     		jogador1 = jogador2
							jogador2 = jogador1
	                    	}
	                       	se(jogador1 == 12)
	                        	{
	                           	 jogador1 = jogador1 - 1
	                   		}
	                         se(jogador1 == 15)
	                         {
	                         	escreva("\n O jogador Atual deve cantar uma musica: \n")
	                         	escreva("\n O jogador Atual cantou? Digite '0' para 'sim' ou '1' para 'não': \n")
	                              
							leia(condicao1)
	                              se(condicao1 == 0)
	                         	{	
	                         		
	                               	jogador1 = jogador1
	                             
	                              se(condicao1 == 1)
	                              {
	                              	 jogador1 = jogador1 - 2
	                              }
	                              senao se(condicao1 != 0 e condicao1 !=1)
	                        				{
	                              		escreva("\n Numero Invalido, O jogador Atual cumpriu a dança? digite '0' para 'sim' e '1' para 'não': \n")
	                                		condicao1 = 0
	                           			}
	                           	}
	                         }
	                         se(jogador1 == 19)
	                         {
	                            	jogador1 = jogador1 - 18
	                         }
	                         se(jogador1 >= 20)
						{
				  			jogadorA = 20
				  			escreva("\n!!!!!!!!!!!!!!!PARABENS!!!!!!!!!!!!!\n")
				  			escreva("!!!!!!!!!!!!!!!VOCE VENCEU!!!!!!!!!!!!!!!!\n")
			  			}
	                                        		
			  				escreva("\n JOGADOR 1 SUA CASA e: ", jogador1,"\n")
			  		}
			  		se(jogadorA == 2)
			  		{	
			  			escreva("\n VEZ JOGADOR 2: " , "\n sua casa atual: ", jogador2) 
			  			dado = u.sorteia(1, 6)
						escreva("\n seu Dado e: ", dado)
			  			jogador2 = dado + jogador2
			  				
						se(jogador2 == 2) 
	        				{
	                 			jogador2 = jogador2 + 3
	        				}
	            			se(jogador2 == 3)
	           		 	{
	              				dado2 = u.sorteia(1,3)
	              			     jogador2 = jogador1 + dado2
	                       		escreva ("\n O resultado do dado de 3 lados e: ", dado2, "\n")
	          			}
	                		se(jogador2 == 7)
	                		{
	                    	   	jogador2 = jogador2 + 0    //definir uma forma de pular uma jogada
	                		}    
	                    	se(jogador2 == 10) 
	                  		{
	                     		jogador1 = jogador2
							jogador2 = jogador1
	                    	}
	                       	se(jogador2 == 12)
	                        	{
	                           	jogador2 = jogador2 - 1
	                   		}	
	                         se(jogador2 == 15)
	                         {
	                         	escreva("\n O jogador Atual deve cantar uma musica: \n")
	                         	escreva("\n O jogador Atual cantou? Digite '0' para 'sim' ou '1' para 'não': \n")
	                         	leia(condicao1)
	                         	
	                              se(condicao1 == 0)
	                         	{	
	                         		
	                               	jogador2 = jogador2
	                             
	                              se(condicao1 == 1)
	                              {
	                              	 jogador2 = jogador2 - 2
	                              }
	                              senao se(condicao1 != 0 e condicao1 !=1)
	                        				{
	                              		escreva("\n Numero Invalido, O jogador Atual cumpriu a dança? digite '0' para 'sim' e '1' para 'não': \n")
	                                		condicao1 = 0
	                           			}
	                           	}
	                         }
	                         se(jogador2 == 19)
	                         {
	                             jogador2 = jogador2 - 18
	                                  		
			  					escreva("\n JOGADOR 2 SUA CASA e: ", jogador2,"\n")
								jogadorA = 0
						}
						se(jogador2 >= 20)
						{
				  			jogadorA = 20
				  			escreva("\n!!!!!!!!!!!!!!!PARABENS!!!!!!!!!!!!!\n")
				  			escreva("!!!!!!!!!!!!!!!VOCE VENCEU!!!!!!!!!!!!!!!!\n")
			  		  	}
							escreva("\n JOGADOR 2 SUA CASA e: ", jogador2,"\n")
					}
						
			 }	

			
			}
					escreva("\n")
					menu = 0
	          }
	         
	          // Apresentar Placar jogo
	          se(menu == 2)
	          {
	            escreva("\n Placar jogo é: \n Jogador 1: ", placar1, "\n Jogador 2: ", placar2)
	          }
	
	          // Finalizar Jogo
	          se(menu == 3)
	          {
	            escreva("\n Finalizar Jogo")
	          }
          }
          senao{
          
          // Outro numero digitado
     	escreva("Numero incorreto, digite outro numero: " )
     	menu = 0
          }
     }
          
  }
 }
              
    
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6558; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */