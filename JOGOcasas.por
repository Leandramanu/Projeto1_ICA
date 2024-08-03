programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		
    		inteiro jogador1 = 1, jogador2 = 1, jogadorA = 1
   		inteiro dado, dado2, ganhador1 = 0 , ganhador2 = 0, condicao1 = 2
   		real menu = 0.0, iniciar, finaljogo, verificarplacar
    		inteiro Dado1 = 0, Dado2 = 0

		enquanto(menu == 0.0){
			
			escreva("\n @'_'@ OLA! EU QUERO JOGAR UM JOGO... @'_'@ ")
			escreva("\n Bem vindo ao \n MOVIE TO MOVE!!\n\n PARA JOGAR Digite 1\n VER O PLACAR Digite 2\n FECHAR Digite 3\n\n")
			leia(menu)

			se(menu == 1.0){

				escreva("\n Jogo inicializado")
				escreva("\n QUE A FORÇA ESTEJA COM VOCÊ \n")
	            	escreva("\n Digite '1' para jogador1 iniciar ou '2' para jogador2 iniciar: \n")
	            	
				//repetição que vai se manter ate que alguem termine o jogo e entre no 'se' do final
				jogadorA = 1
				jogador1 = 1
				jogador2 = 1
				
		    				enquanto(jogadorA <= 20)
						{
							//Precisa digitar 1 e 2 para intercalar entre os jogadores
							leia(jogadorA)
							
					  		se(jogadorA == 1)
					  		{
					  			escreva("\n VEZ JOGADOR 1: " , "\n sua casa atual: ", jogador1)
					  			dado = u.sorteia(1, 6)
								escreva("\n seu Dado e: ", dado)
					  			jogador1 = dado + jogador1
					  		
								se(jogador1 == 2) 
					        		{
					        			escreva("'GRANDES PODERES TRAZEM GRANDES RESPONSABILIDADES'... você pode andar mais 2 casas")
					                 	jogador1 = jogador1 + 3
					        		}
			            			se(jogador1 == 3)
			           		 	{
			           		 		escreva("'O QUE NÃO TE MATA, TE DEIXA MAIS ESTRANHO'... Jogue o dado de 3 lados")
			                     		dado2 = u.sorteia(1,3)
			              			 	jogador1 = jogador1 + dado2
			                     		escreva ("\n O resultado do dado de 3 lados e: ", dado2)
			          			}
			                		se(jogador1 == 7)
			                		{
			                			escreva("'MEU NOME É BOND, JAMES BOND!'... fique fora 1 rodada")
			                    	  	jogador1 = jogador1 + 0    //definir uma forma de pular uma jogada
			                		}    
			                    	se(jogador1 == 10) 
			                  		{
			                  			escreva("'OU VOCÊ MORRE HERÓI, OU VIVE O SUFICIENTE PARA SE TORNAR O VILÃO'... troca de casa com o jogador adversario.")
			                     		jogador1 = jogador2
									jogador2 = jogador1
			                    	}
			                       	se(jogador1 == 12)
			                        	{
			                        		 escreva("'VENHA QUERIDO EU NAO VOU TE MACHUCAR'... volte 1 casa")
			                           	 jogador1 = jogador1 - 1
			                   		}
			                         se(jogador1 == 15)
			                         {
			                         	
			                         	escreva("\n O jogador Atual deve cantar uma musica tema de filme: \n")
			                         	
			                         	enquanto(condicao1 < 0 ou condicao1 > 1){
			                         	
			                         	escreva("\n O jogador Atual cantou? Digite '0' para 'sim' ou '1' para 'não': \n")
									leia(condicao1)

										se(condicao1 < 0 ou condicao1 > 1){
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
			                         condicao1 = 2
			                         se(jogador1 == 19)
			                         {
			                         	escreva("'I SEE DEAD PEOPLE'... retorne a 1º casa")
			                            	jogador1 = jogador1 - 18
			                         }

			                        		 escreva("\n JOGADOR 1 SUA CASA e: ", jogador1,"\n")
			                         
					  			}
								se(jogador1 >= 20)
								{
									jogador1 = 20
						  			escreva("\n!!!!!!!!!!!!!!!PARABENS!!!!!!!!!!!!!\n")
						  			escreva("!!!!!!!!!!!!!!!VOCE VENCEU!!!!!!!!!!!!!!!!\n")
						  			jogadorA = 21

						  			ganhador1++		
					  			}
					  		
					  		se(jogadorA == 2)
					  		{	
					  			escreva("\n VEZ JOGADOR 2: " , "\n sua casa atual: ", jogador2) 
					  			dado = u.sorteia(1, 6)
								escreva("\n seu Dado e: ", dado)
					  			jogador2 = dado + jogador2
					  				
								se(jogador2 == 2) 
			        				{
			        					escreva("'GRANDES PODERES TRAZEM GRANDES RESPONSABILIDADES'... você pode andar mais 2 casas")
			                 			jogador2 = jogador2 + 3
			        				}
			            			se(jogador2 == 3)
			           		 	{
			           		 		escreva("'O QUE NÃO TE MATA, TE DEIXA MAIS ESTRANHO'... Jogue o dado de 3 lados")
			              				dado2 = u.sorteia(1,3)
			              			     jogador2 = jogador1 + dado2
			                       		escreva ("\n O resultado do dado de 3 lados e: ", dado2, "\n")
			          			}
			                		se(jogador2 == 7)
			                		{
			           		 		escreva("'MEU NOME É BOND, JAMES BOND!'... fique fora 1 rodada")
			                    	   	jogador2 = jogador2 + 0    //definir uma forma de pular uma jogada
			                		}    
			                    	se(jogador2 == 10) 
			                  		{
			                  			escreva("'OU VOCÊ MORRE HERÓI, OU VIVE O SUFICIENTE PARA SE TORNAR O VILÃO'... troca de casa com o jogador adversario.")
			                     		jogador1 = jogador2
									jogador2 = jogador1
			                    	}
			                       	se(jogador2 == 12)
			                        	{
			                        		escreva("'VENHA QUERIDO EU NAO VOU TE MACHUCAR'... volte 1 casa")
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
			                         
			                         	condicao1 = 2
			                         	
			                         se(jogador2 == 19)
			                         {
			                         	escreva("'I SEE DEAD PEOPLE'... retorne a casa 1")
			                              jogador2 = jogador2 - 18
								}
								
								escreva("\n JOGADOR 2 SUA CASA e: ", jogador2,"\n")
								
								se(jogador2 >= 20)
								{
									escreva("'PEDE PRA SAIR 01!'")
						  			escreva("\n!!!!!!!!!!!!!!!PARABENS!!!!!!!!!!!!!\n")
						  			escreva("!!!!!!!!!!!!!!!VOCE VENCEU!!!!!!!!!!!!!!!!\n")

						  			jogadorA = 21
						  			ganhador2++
					  		  	}
						
			 				}	

						}
					
					menu = 0.0
					
				}
				
				senao se(menu == 2.0)
				{
					escreva("\nO placar dos jogadores são: \n\n   Jogador Um: ",ganhador1,"\n   Jogador Dois: ", ganhador2, "\n")
					menu = 0.0
				
			  	}
			  	
			  	senao se(menu == 3)
			  	{
						menu = 10.0
				  	
			 	}
			 	senao
			 	{
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
 * @POSICAO-CURSOR = 8185; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */