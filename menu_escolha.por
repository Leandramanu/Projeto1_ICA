programa {
  inclua biblioteca Util --> u
  funcao inicio() {

    inteiro vetorCasa[20], vetorDado[6]
    inteiro jogador1, jogador2, jogador, placar1 = 0, placar2 = 0 
    cadeia menu, iniciar, finaljogo, verificarplacar
    inteiro i

      //Apresentação do jogo.
      escreva("Bem vindo ao MOVE TO MOVIE")

      //Menu do jogo
      escreva("\n Digite:")
      escreva("\n Digite 1 para INICIALIZAR")
      escreva("\n Digite 2 para VERIFICAR PLACAR")
      escreva("\n Digite 3 para FINALIZAR JOGO\n")
      leia(menu)

    //Escolha feita do menu
    escolha(menu)
    {
      caso 1: iniciar
      pare
      caso 2: verificarplacar
      pare
      caso 3: finaljogo
      pare
      caso contrario: 
      pare
    }
          //Inicializando Menus
          //Escolhido numero 1 do menu: INICIALIZAR JOGO
          se(menu == 1)
          {

            //Desenvolvimento Jogo
            escreva("\n Jogo inicializado")
            escreva("\n Jogador 1 começa a partida")




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
          
          // Outro numero digitado
          senao
          {
            
          }

    }
    
  }