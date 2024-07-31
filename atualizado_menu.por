programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		
		inteiro placar1 = 0, placar2 = 0 
    		inteiro jogador1 = 1, jogador2 = 1, jogadorA = 0
   		inteiro dado, dado2, ganhador1 = 0 , ganhador2 = 0, condicao1 = 1
   		real menu = 0.0, iniciar, finaljogo, verificarplacar
    		inteiro Dado1 = 0, Dado2 = 0

		enquanto(menu == 0.0){
			
			escreva("\n\nBem vindo ao jogo \nMOVIE TO MOVE!!\n\n PARA JOGAR Digite 1\n VER O PLACAR Digite 2\n FECHAR Digite 3\n\n")

			leia(menu)

			se(menu == 1.0){

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
			}senao se(menu == 2.0){

				escreva("\nO placar dos jogadores são: \n\n   Jogador Um: ",ganhador1,"\n   Jogador Dois: ", ganhador2, "\n")

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
 * @POSICAO-CURSOR = 650; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */