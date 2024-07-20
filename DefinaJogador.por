programa {
  inclua biblioteca Util --> u
  funcao inicio() {

    inteiro vetor[20], vetorDado[6]
    inteiro jogador1, jogador2, jogador
    cadeia menu, iniciar, finaljogo, verificarplacar
    inteiro i, maior = 0, menor = 0,
      escreva("Bem vindo ao MOVE TO MOVIE")
      escreva("\n Digite:")
      escreva("\n Digite 1 para INICIALIZAR")
      escreva("\n Digite 2 para VERIFICAR PLACAR")
      escreva("\n Digite 3 para FINALIZAR JOGO\n")
      leia(menu)


    escolha(menu)
    {
      caso 1: iniciar
        escreva("\n Jogo Iniciado", iniciar)
      pare
      caso 2: verificarplacar
        escreva("\n Verificar Placar Jogadores", verificarplacar)
      pare
      caso 3:
        escreva("\n Finalizar Jogo ", finaljogo)
      pare
    }

    se(menu == 1)
    {
       escreva("\n Decidir qual jogador começa:\n")
    }
          
    }
    
  }
}
