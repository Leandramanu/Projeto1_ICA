programa
{

	inclua biblioteca Util --> u
	
  	funcao inicio() 
	{
  	

    //inteiro Tab1[25], i = 0
    //inteiro Tab2[25], j = 0
    inteiro jogador1 = 1, jogador2 = 1, jogadorA = 0
    inteiro dado, dado2, ganhador1 = 0 , ganhador2 = 0, condicao1 = 1

    escreva("\n INICIALIZAR JOGO \n")
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
		  			//i = jogador1
		  			//Tab1[i] = i
		  		
							se(jogador1 == 2) 
        			{
                 jogador1 = jogador1 + 3
        			}
            			se(jogador1 == 3)
           		 		{
                     dado2 = u.sorteia(1,3)
              			 jogador1 = jogador1 + dado2
                     escreva ("o resultado do dado de 3 lados e: ", dado2)
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
                              	  	escreva("O jogador Atual cumpriu a dança? Digite 1 para sim 2 para não \n")
                               			leia(condicao1)
                                		se(condicao1 == 1)
                               			{
                               		 	jogador1 = jogador1 + 0
                                		}
                                		se(condicao1 == 2)
                               			{
                              		  jogador1 = jogador1 - 2
                               		  }
                                		senao(condicao1 != 1 e 2)
                              		  escreva("Numero Invalido, O jogador Atual cumpriu a dança? digite 1 para sim e 2 para não \n")
                                		leia(condicao1)
                           			 		}
                                    		se(jogador1 == 19)
                                  		  {
                                        jogador1 = jogador1 - 17
                                   		  }
                                        		
		  		escreva("\n JOGADOR 1 SUA CASA e: ", jogador1,"\n")
		  		}
		  		
					
					
							se(jogadorA == 2)
		  				{	
		  				escreva("\n VEZ JOGADOR 2: " , "\n sua casa atual: ", jogador2) 
		  				dado = u.sorteia(1, 6)
							escreva("\n seu Dado e: ", dado)
		  				jogador2 = dado + jogador2
		  				//escreva("\n JOGADOR 2 SUA CASA Ã‰: ", jogador2, "\n")
		  				//j = jogador2
		  				//Tab2[j] = j
									se(jogador2 == 2) 
        					{
                 	jogador2 = jogador2 + 3
        					}
            					se(jogador2 == 3)
           		 				{
              				  dado2 = u.sorteia(1,3)
              			    jogador2 = jogador1 + dado2
                        escreva ("o resultado do dado de 3 lados e: ", dado2)
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
                              	  		escreva("O jogador Atual cumpriu a dança? Digite 1 para sim 2 para não \n")
                               				leia(condicao1)
                                			se(condicao1 == 1)
                               				{
                               		 		jogador2 = jogador2 + 0
                                			}
                                			se(condicao1 == 2)
                               				{
                              		  	jogador2 = jogador2 - 2
                               		  	}
                                			senao(condicao1 != 1 e 2)
                              		  	escreva("Numero Invalido, O jogador Atual cumpriu a dança? digite 1 para sim e 2 para não \n")
                                			leia(condicao1)
                           			 			}
                                    		se(jogador2 == 19)
                                  		  {
                                        jogador2 = jogador2 - 17
                                   		  }
                                        		
		  				escreva("\n JOGADOR 2 SUA CASA e: ", jogador2,"\n")
		  			  
							jogadorA = 0
					 
					 
					 }
		  				
						se(jogador1 >= 20)
						{
		  			jogadorA = 21
		  			ganhador1++
		  			}

						se(jogador2 >= 20)
						{
		  			jogadorA = 21
		  			ganhador2++
		  		  }

				}
					
		  }
		  		
		 	escreva("O Placar atual e: \n") 
			escreva("\n Jogador 1:",  ganhador1, "\n")
			escreva("\n Jogador 2:",  ganhador2, "\n")
		  		
	}	

	
	
}
		  
	
  	 


 /*O percurso deve ter 20 casas totais. Ambos os jogadores começam na casa 1.  
O dado que sorteia os números para os jogadores percorrerem deve ter 6 faces, com a 
numeração de 1 a 6. 
As seguintes casas do percurso devem ter as funcionalidades descritas a seguir: -
casa 2: deve avançar o jogador para a casa 5. - 
casa 3: deve jogar um dado adicional de 3 lados. - 
casa 7: deve impedir que o jogador jogue o dado por 1 rodada. - 
casa 10: deve trocar as casa em que os jogadores estão. - 
casa 12: deve retroceder 1 casa. - 
casa 15: deve cantar um trecho de uma música (na vida real) ou voltar 2 casas. - 
casa 19: deve voltar para a casa 1. - 
casa 20: recebe a mensagem de vencedor da partida.*/