programa { /*O percurso deve ter 20 casas totais. Ambos os jogadores come�am na casa 1.  
O dado que sorteia os n�meros para os jogadores percorrerem deve ter 6 faces, com a 
numera��o de 1 a 6. 
As seguintes casas do percurso devem ter as funcionalidades descritas a seguir: -
casa 2: deve avan�ar o jogador para a casa 5. - 
casa 3: deve jogar um dado adicional de 3 lados. - 
casa 7: deve impedir que o jogador jogue o dado por 1 rodada. - 
casa 10: deve trocar as casa em que os jogadores est�o. - 
casa 12: deve retroceder 1 casa. - 
casa 15: deve cantar um trecho de uma m�sica (na vida real) ou voltar 2 casas. - 
casa 19: deve voltar para a casa 1. - 
casa 20: recebe a mensagem de vencedor da partida.*/
  funcao inicio() {

    inteiro jogador1 = 0, jogador2 = 0, jogadorAtual=0, dado3 = 1, condicao1 = 0

    //para(jogadorAtual = 1; jogadorAtual <=19;jogador ++){//
        escreva("Digite")
        leia(jogadorAtual)

        se(jogadorAtual == 2) 
        {
            jogadorAtual = jogadorAtual + 3
        }
            se(jogadorAtual == 3)
            {
               jogadorAtual = jogadorAtual + dado3
            }
                
                se(jogadorAtual == 7)
                {
                    jogadorAtual = jogadorAtual
                }    
                    se(jogadorAtual == 10) 
                    {
                        jogadorAtual = jogadorAtual //trecho a se fazer depois de definir variavel que vai intercalar jogador 1 e 2
                    }
                        
                        se(jogadorAtual == 12)
                        {
                            jogadorAtual = jogadoraAtual - 1
                        }
                            se(jogadorAtual == 15)
                            {
                                escreva("O jogador Atual cumpriu a dan�a? Digite 1 para sim 2 para n�o")
                                leia(condicao1)
                                se(condicao1 == 1)
                                {
                                jogadorAtual = jogadorAtual
                                }
                                se(condicao1 == 2)
                                {
                                jogadorAtual = jogadorAtual - 2
                                }
                                senao(condicao1 != 1 ou 2)
                                escreva("Numero Invalido, O jogador Atual cumpriu a dan�a? digite 1 para sim e 2 para n�o")
                                leia(condicao1)
                            }
                                    se(jogadorAtual == 19)
                                    {
                                        jogadorAtual = jogadorAtual - 17
                                    }
                                        se(jogadorAtual == 20)
                                        {
                                            escreva("Parabens voc� venceu o jogo, deseja continuar?")
                                            //a definir a variavel que vai voltar ao menu e adicionar ponto ao marcador
                                        }

        escreva("Sua casa atual �:\n", jogadorAtual)

    }


   

    


    
  //}
//}