programa {
  inclua biblioteca Util --> u
  funcao inicio() {

    inteiro jogador1, jogador2, jogador = 0, placar1 = 0, placar2 = 0 
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
	            escreva("\n O dado sera jogado para ver qual jogador começa a partida:")

			         enquanto(Dado1 == Dado2)
			         {
				         	u.aguarde(1000)
				         
				          Dado1 = u.sorteia(1,6)
				          Dado2 = u.sorteia(1,6)
				          
				          escreva("\n Jogador 1: ", Dado1)
				          escreva("\n Jogador 2: ", Dado2)
					}
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
 * @POSICAO-CURSOR = 668; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
