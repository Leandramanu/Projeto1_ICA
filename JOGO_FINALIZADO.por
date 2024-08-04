programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		
    		inteiro jogador1, jogador2, jogadorA 
   		inteiro dado, dado2, ganhador1 = 0 , ganhador2 = 0, condicao1 = 2
   		real menu = 0.0

		//Menu JOGO
		enquanto(menu == 0.0)
		{
			//APRESENTAÇÃO INICIAL DO JOGO
			escreva("\n @'_'@ OLA! EU QUERO JOGAR UM JOGO... @'_'@ ")
			escreva("\n Bem vindo ao \n MOVIE TO MOVE!!\n\n") 
			escreva("\n PARA JOGAR Digite 1\n VER O PLACAR Digite 2\n FECHAR Digite 3\n\n")
			leia(menu)

			//Caso 1 - INICIALIZAR JOGO
			se(menu == 1.0)
			{
				escreva("\n Jogo inicializado")
				escreva("\n QUE A FORÇA ESTEJA COM VOCÊ \n")
	            	escreva("\n Digite '1' para JOGADOR 1 iniciar ou '2' para JOGADOR 2 iniciar: \n")
	            	
				//CASA INICIAL JOGADORES (CASA 1) E INICIO DO JOGO
				jogadorA = 1
				jogador1 = 1
				jogador2 = 1
				
		    				enquanto(jogadorA <= 20)
						{
							//Precisa digitar 1 e 2 para intercalar entre os jogadores
							leia(jogadorA)

							se(jogadorA < 1 ou jogadorA > 2)
							{
								escreva("Numero inválido.\n")
							}

							//Jogador 1 
					  		se(jogadorA == 1)
					  		{
					  			//INDICADORES JOGADOR
					  			escreva("\n VEZ JOGADOR 1: " , "\n sua casa atual: ", jogador1)
					  			dado = u.sorteia(1, 6)
								escreva("\n seu Dado e: ", dado)
					  			jogador1 = dado + jogador1

					  			//CASAS CONDICIONAIS JOGADOR 1
								se(jogador1 == 2) 
					        		{
					        			escreva("\n'GRANDES PODERES TRAZEM GRANDES RESPONSABILIDADES'... você pode andar mais 3 casas")
					                 	jogador1 = jogador1 + 3
					        		}
			            			se(jogador1 == 3)
			           		 	{
			           		 		escreva("\n'O QUE NÃO TE MATA, TE DEIXA MAIS ESTRANHO'... Jogue o dado de 3 lados")
			                     		dado2 = u.sorteia(1,3)
			              			 	jogador1 = jogador1 + dado2
			                     		escreva ("\n O resultado do dado de 3 lados e: ", dado2)
			          			}
			          			//JOGADOR DEVE CEDER A JOGADA MANUALMENTE
			                		se(jogador1 == 7)
			                		{
			                			escreva("\n'MEU NOME É BOND, JAMES BOND!'... fique fora 1 rodada")
			                    	  	jogador1 = jogador1 + 0    
			                		}    
			                    	se(jogador1 == 10) 
			                  		{
			                  			escreva("\n'OU VOCÊ MORRE HERÓI, OU VIVE O SUFICIENTE PARA SE TORNAR O VILÃO'... troca de casa com o jogador adversario.")
			                     		jogador1 = jogador2
									jogador2 = 10
			                    	}
			                       	se(jogador1 == 12)
			                        	{
			                        		 escreva("\n'VENHA QUERIDO EU NAO VOU TE MACHUCAR'... volte 1 casa")
			                           	 jogador1 = jogador1 - 1
			                   		}
			                         se(jogador1 == 15)
			                         {   	
			                         	escreva("\n O jogador Atual deve cantar uma musica tema de filme: \n")
			                         	
			                         	enquanto(condicao1 < 0 ou condicao1 > 1)
			                         	{
				                         	escreva("\n O jogador Atual cantou? Digite '0' para 'sim' ou '1' para 'não': \n")
										leia(condicao1)

										se(condicao1 < 0 ou condicao1 > 1)
										{
											escreva("\nNumero inválido.")
										}
			                         	}
			                              se(condicao1 == 0)
			                         	{	
			                               	jogador1 = jogador1
			                         	}
			                              se(condicao1 == 1)
			                              {
			                              	 jogador1 = jogador1 - 2
			                              }
			                         }
			                         		//FORMA DE REINICIAR VALOR DE CONDICAO1
			                        			 condicao1 = 2
			                        			 
			                         se(jogador1 == 19)
			                         {
			                         	escreva("\n'I SEE DEAD PEOPLE'... retorne a 1º casa")
			                            	jogador1 = jogador1 - 18
			                         }
					  		
					  			//DEFINIR CASA FINAL ATE 20, ARMAZENAR PLACAR E VOLTAR AO MENU INICIAL
								se(jogador1 >= 20)
								{
								  jogador1 = 20
						  	 	  jogadorA = 21
                 					  ganhador1++		
					  		     }

								// INDICADOR DE CASA ATUAL
               					escreva("\n JOGADOR 1 SUA CASA É: ", jogador1,"\n")

                					//INDICAR VENCEDOR
                					se(jogador1 == 20)
              					  	{
		               				escreva("\n\n!!!!!!!!!!!!!!! Jogador 1 !!!!!!!!!!!!!!!!!")
	                				     escreva("\n\n!!!!!!!!!!!!!!! PARABENS !!!!!!!!!!!!!!!!!!")
									escreva("\n\n!!!!!!!!!!!!!!!VOCE VENCEU!!!!!!!!!!!!!!!!!\n")
               					}
							}
					  		//Jogador 2
					  		se(jogadorA == 2)
					  		{	
					  			//INDICADORES JOGADOR
					  			escreva("\n VEZ JOGADOR 2: " , "\n sua casa atual: ", jogador2) 
					  			dado = u.sorteia(1, 6)
								escreva("\n seu Dado e: ", dado)
					  			jogador2 = dado + jogador2

					  			//CASAS CONDICIONAIS JOGADOR 2
								se(jogador2 == 2) 
			        				{
			        					escreva("\n'GRANDES PODERES TRAZEM GRANDES RESPONSABILIDADES'... você pode andar mais 3 casas")
			                 			jogador2 = jogador2 + 3
			        				}
			            			se(jogador2 == 3)
			           		 	{
			           		 		escreva("\n'O QUE NÃO TE MATA, TE DEIXA MAIS ESTRANHO'... Jogue o dado de 3 lados")
			              				dado2 = u.sorteia(1,3)
			              			     jogador2 = jogador1 + dado2
			                       		escreva ("\n O resultado do dado de 3 lados e: ", dado2, "\n")
			          			}
			          			//JOGADOR DEVE CEDER A JOGADA MANUALMENTE
			                		se(jogador2 == 7)
			                		{
			           		 		escreva("\n'MEU NOME É BOND, JAMES BOND!'... fique fora 1 rodada")
			                    	   	jogador2 = jogador2 + 0    
			                		}    
			                    	se(jogador2 == 10) 
			                  		{
			                  			escreva("\n'OU VOCÊ MORRE HERÓI, OU VIVE O SUFICIENTE PARA SE TORNAR O VILÃO'... troca de casa com o jogador adversario.")			          
									jogador2 = jogador1
									jogador1 = 10
			                    	}
			                       	se(jogador2 == 12)
			                        	{
			                        		escreva("\n'VENHA QUERIDO EU NAO VOU TE MACHUCAR'... volte 1 casa")
			                           	jogador2 = jogador2 - 1
			                   		}	
			                         se(jogador2 == 15)
			                         {
			                         	escreva("\n O jogador Atual deve cantar uma musica tema de filme: \n")
			                         	
			                         	enquanto(condicao1 < 0 ou condicao1 > 1)
			                         	{
				                         	escreva("\n O jogador Atual cantou? Digite '0' para 'sim' ou '1' para 'não': \n")
										leia(condicao1)
	
											se(condicao1 < 0 ou condicao1 > 1)
											{
												escreva("\nNumero inválido.")
											}
			                         	}
			                              se(condicao1 == 0)
			                         	{	
			                               	jogador2 = jogador2
			                         	}
			                              se(condicao1 == 1)
			                              {
			                              	 jogador2 = jogador2 - 2
			                              }
			                         }
			                         	//FORMA DE REINICIAR VALOR DE CONDICAO1
			                         	condicao1 = 2
			                         	
			                         se(jogador2 == 19)
			                         {
			                         	escreva("\n'I SEE DEAD PEOPLE'... retorne a 1º casa")
			                              jogador2 = jogador2 - 18
								}

								//DEFINIR CASA FINAL ATE 20, ARMAZENAR PLACAR E VOLTAR AO MENU INICIAL
								se(jogador2 >= 20)
								{
									  jogador2 = 20
							  	 	  jogadorA = 21
	                 					  ganhador2++		
					  		     }
								// INDICADOR DE CASA ATUAL
               					escreva("\n JOGADOR 2 SUA CASA e: ", jogador2,"\n")

               					//INDICAR VENCEDOR
                					se(jogador2 == 20)
              					     {
               					escreva("\n\n!!!!!!!!!!!!!!! Jogador 2 !!!!!!!!!!!!!!!!")
                				     escreva("\n\n!!!!!!!!!!!!!!! PARABENS !!!!!!!!!!!!!!!!!")
								escreva("\n\n!!!!!!!!!!!!!!!VOCE VENCEU!!!!!!!!!!!!!!!!\n")
               					}
			 				}	
						}
					//VOLTAR AO MENU
					menu = 0.0
					
			}
			//Caso 2 - VERIFICAR PLACACR
			senao se(menu == 2.0)
			{
				escreva("\nO placar dos jogadores são: \n\n   Jogador 1: ",ganhador1,"\n   Jogador 2: ", ganhador2, "\n")
					
				//VOLTAR AO MENU
				menu = 0.0			
			}
			//Caso 3 - JOGO FINALIZADO
			senao se(menu == 3)
			{
				escreva("\n JOGO FINALIZADO")
			}
			// Caso numero digitado seja diferente 1, 2 ou 3
			senao
			{
			  	 escreva("\n O numero digitado foi incorreto você será redirecionado para o menu incial e digitar o numero novamente.")
			  	 //VOLTAR AO MENU
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
 * @POSICAO-CURSOR = 9177; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {jogador1, 8, 14, 8}-{jogador2, 8, 24, 8}-{dado, 9, 13, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */