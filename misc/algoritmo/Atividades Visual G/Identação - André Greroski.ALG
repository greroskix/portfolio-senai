Algoritmo "Identação"
//  

Var
item: vetor [0..4] de inteiro
esque: inteiro
nome: caractere
recebe:inteiro
arma: inteiro
acaoI: inteiro
vidaMons: inteiro
vida: inteiro
comecar: inteiro
esp: inteiro
turno: inteiro
vic:inteiro
camin: inteiro
vidaVik:inteiro
vidaArc:inteiro
vidaEsc:inteiro
cont: inteiro
tunel: inteiro
tunelEsc: inteiro
time: inteiro
funcao rodarDado : inteiro

Var
i: inteiro

inicio
i:= randi(20)
    se i<=5 entao
       escreval ("FALHA CRITICA")
    senao
         se i<=10 entao
            escreval ("falha")
         senao
              se i<=15 entao
                 escreval ("poderia ser melhor")
              senao
                   se i<=18 entao
                      escreval ("sucesso :)")
                   senao
                        se i>18 entao
                           escreval ("SUCESSO MAXIMO")
                        fimse
                   fimse
              fimse
         fimse
    fimse
retorne i
fimfuncao
Inicio

vida:= 0
vidaMons:= 0
esp:= 6
escreval ("")
escreval ("Por favor relate qualquer bug ao autor")
escreval ("VisualrpG by Kami")
escreval()
escreval ("-/-/-/-/-/-/-/-/-/-/-")
escreval()
escreval ("1. COMEÇAR")
escreval ("2. SAIR DO JOGO")
leia (comecar)
escolha (comecar)
caso 2
     escreval ("Saindo...")

Fimalgoritmo
caso 1
     escreval ("Bem vindo...")
     escreval ("")
     escreval ("olá jogador, qual seu nome?")
     leia (nome)
     escreval ("hum...", nome, "...")
     escreval ("eu sou O narrador, e vou te guiar por esta historia")
     escreval("")
     escreval ("O sol brilha pela janela, iluminando o interior da cabana, sobre a mesa, 3 armas...")
     escreval ("")
     escreval ("1- espada longa")
     escreval ("2- martelo")
     escreval ("3- soco ingles")
     escreval (nome, "... escolha uma arma..")
     leia (arma)
     escolha (arma)
     caso 1
          escreval ("uma arma precisa de mão dupla, além de bela... boa escolha")
     caso 2
          escreval ("bruto... uma leitura quase poética da engenharia da destruição")
     caso 3
          escreval ("...incomum... mas ainda uma boa escolha")
     outrocaso
escreval("... mãos vazias? corajoso")
fimescolha
escreval ("")
escreval ("tendo sua arma em mãos, você sai da pequena cabana onde está")
escreval ("o chão começa a tremer enquanto uma mão agarra o solo para erguer um corpo prutefato")
escreval ("agora você entrará em COMBATE")
escreval ("")
escreval ("INIMIGO: zumbi")
escreval ("")
escreval ("")
escreval ("Neste momento você possui algumas opções...")
repita
      escreval ("")
      escreval("turno:", nome)
      escreval ("")
      escreval ("1- Atacar: Você ataca o inimigo inflingindo dano")
      escreval ("2- Curar: Você cura sua vida")
      escreval ("3- Inspecionar: Você descobre a quantidade de vida total ou restante de um inimigo")
      escreval ("4- Ataque especial: Um ataque potente com altas chances de acerto")
      escreval ("")
      escreval ("Você se vê frente a frente com o corpo morto, qual sua ação?")
      escreval ("")
      escreval (nome,", Dano recebido:", vida)
      escreval ("Zumbi, vida restante:", 20-vidaMons)
      escreval("")
      leia (acaoI)
      escolha (acaoI)
      caso 1
           escreval ("Você ataca em uma investida contra o zumbi")
           recebe:= rodarDado()
           escreval(recebe)
           se recebe<=5 entao
              escreval ("Você erra seu ataque, abrindo sua guarda")
              escreval ("O zumbi rapidamente aproveita a oportunidade e te ataca")
              escreval ("dano recebido: 5")
              vida:= vida+5
           senao
                se recebe<=10 entao
                   escreval ("Você erra o ataque, mas consegue se afastar a tempo")
                senao
                     se recebe<=15 entao
                        escreval ("Seu ataque é rapído, raspando contra o peito da criatura")
                        escreval ("Dano: 4")
                        vidaMons:= vidaMons+4
                     senao
                          se recebe<=18 entao
                             escreval ("Você golpeia o peito da criatura em um golpe ascendente")
                             escreval ("Dano: 8")
                             vidaMons:= vidaMons+8
                          senao
                               se recebe>18 entao
                                  escreval ("...")
                                  escreval ("uma luz ressoa pelos seus punhos, você sente todos seus músculos serem comprimidos em prol de um único ataque"
                                  escreval ("Dano máximo")
                                  vidaMons:= vidaMons+10
                               fimse
                          fimse
                     fimse
                fimse
           fimse
      caso 2
           escreval ("Você concentra sua energia com o objetivo de se curar")
           se vida=0 entao
              escreval ("Vida já completa")
           senao
                recebe:= rodarDado()
                escreval(recebe)
           se recebe<=5 entao
              escreval ("Tem muito barulho a sua volta, você não consegue se curar")
              escreval ("O zumbi aproveita sua vulnerabilidade e ataca")
              escreval ("Dano recebido: 5")
              vida:= vida+5
           senao
                se recebe<=10 entao
                   escreval ("O morto-vivo salta em direção a você, não te dando espaço para se curar")
                senao
                     se recebe<=15 entao
                        escreval ("Você se concentra e consegue se curar durante um curto periodo")
                        escreval ("Cura recebida: 8")
                        vida:= vida-8
                     senao
                          se recebe<=18 entao
                             escreval ("O corpo decrépto se afasta, te dando tempo de se curar")
                             escreval ("Cura recebida: 14")
                             vida:= vida-14
                          senao
                               se recebe>18 entao
                                  escreval ("...")
                                  escreval ("Sua mente alcança um estágio de concentração máxima, seu corpo começa a aquecer enquanto seus ferimentos expostos se fecham..."
                                  escreval ("Cura máxima")
                                  vida:= vida-21
                               fimse
                          fimse
                     fimse
                fimse
           fimse
      caso 3
           escreval ("Você força seus olhos, tentando analisar o inimigo a sua frente")
           escreval ("")
           se vidaMons>18 entao
              escreval ("O zumbi aparenta estar fraco, mal conseguindo segurar seus próprios membros")
           senao
                se vidaMons<=14 entao
                   escreval ("O zumbi aparenta estar cansado")
                senao
                     se vidaMons<=10 entao
                        escreval ("O zumbi parece ferido mas determinado a terminar este confronto")
                     senao
                          se vidaMons<=7 entao
                             escreval ("O zumbi sorri com poucos ferimentos enquanto se prepara")
                          senao
                               se vidaMons<=5 entao
                                  escreval ("O zumbi sorri de forma malévola enquanto aquece suas juntas empoeiradas"
                               fimse
                          fimse
                     fimse
                fimse
           fimse
      fimse
caso 4
     se esp=0 entao
        escreval ("Você não possui ataques especiais")
     senao
          se arma=1 entao
             escreval ("Você agarra o cabo de sua espada com força enquanto a lâmina brilha sobre a luz do sol")
             escreval ("Você usa INVESTIDA FINAL")
             escreval ("Você corre em direção ao corpo morto enquanto sua lâmina é arrastada contra o chão")
             escreval ("Um flash branco puro é produzido pela espada enquanto ela parte o corpo decrepto")
             vidaMons:= vidaMons+20
             escreval ("Dano: 20")
             esp:= esp-1
             escreval ("Você possui ", esp, " ataques especiais")
          senao
               se arma=2 entao
                  escreval ("Você agarra o cabo do grande martelo com força enquanto produz uma sombra acima do corpo semi morto")
                  escreval ("Você usa TERROR SÍSMICO")
                  escreval ("Você bate com seu martelo no chão criando um tremor imenso no solo")
                  escreval ("O corpo semi morto sente o tremor sob seus pés, em poucos instantes o chão se abre revelando uma explosão concentrada")
                  vidaMons:= vidaMons+20
                  escreval ("Dano: 20")
                  esp:= esp-1
                  escreval ("Você possui ", esp, " ataques especiais")
               senao
                    se arma=3 entao
                       escreval ("Você veste seu soco ingles enquanto encara o seu oponente como um predador faminto")
                       escreval ("Você usa RAJADA ALI")
                       escreval ("Você avança contra o corpo decrépto com sua guarda alta, surpreso com sua investida, o inimigo perde o equilíbrio abrindo sua guarda")
                       escreval ("Você desfere uma rajada de socos contra o corpo semi morto, ele tenta se defender mas logo perde a consciência")
                       vidaMons:= vidaMons+20
                       escreval ("Dano: 20")
                       esp:= esp-1
                       escreval ("Você possui ", esp, "  ataques especiais")
                    senao
                         escreval ("Você arma sua guarda, preparado um ataque")
                         escreval ("Você usa INVESTIDA VELOZ")
                         escreval ("Você avança contra o corpo decrépto com sua guarda alta, surpreso com sua investida, o inimigo perde o equilíbrio abrindo sua guarda")
                         escreval ("Você desfere uma rajada de socos contra o corpo semi morto, ele tenta se defender mas logo perde a consciência")
                         vidaMons:= vidaMons+20
                         escreval ("Dano: 20")
                         esp:= esp-1
                         escreval ("Você possui ", esp, " ataques especiais")
                    fimse
               fimse
          fimse
     fimse
fimescolha
escreval ("Turno: Zumbi")
turno:= randi(2)
escolha (turno)
caso 1
     escreval ("Zumbi assume uma postura de luta")
     recebe:=rodarDado
     se recebe<=5 entao
        escreval ("O monstro ataca, você segura o braço do corpo morto")
        escreval ("Rapidamente aproveita a oportunidade e ataca")
        escreval ("Dano: 5")
        vidaMons:= vidaMons+5
     senao
          se recebe<=10 entao
             escreval ("O monstro o ataca, mas você se desvia para trás criando distância")
          senao
               se recebe<=15 entao
                  escreval ("O zumbi te ataca, você tenta se desviar mas o ataque acaba raspando contra você, cortando seu peito")
                  escreval ("Dano recebido: 4")
                  vida:= vida+4
               senao
                    se recebe<=18 entao
                       escreval ("O monstro avança de maneira inesperada, atingindo com força seu estômago")
                       escreval ("Dano recebido: 8")
                       vida:= vida+8
                    senao
                         se recebe>18 entao
                            escreval ("...")
                            escreval ("Você sente seu corpo se arrepiar, o zumbi agora exala uma aura caçadora, correndo como um animal faminto contra você")
                            escreval ("Dano máximo recebido")
                            vida:= vida+10
                         fimse
                    fimse
               fimse
          fimse
     fimse
caso 2
     escreval ("Você vê o monstro se concentrar")
     recebe:= rodarDado()
     se recebe<=5 entao
        escreval ("Você aproveita a oportunidade e atinge um golpe rápido contra o peito do monstro")
        escreval ("Dano: 2")
        vidaMons:= vidaMons+2
     senao
          se recebe<=10 entao
             escreval ("Você tenta aproveitar a oportunidade para desferir um golpe, mas logo o monstro se afasta")
          senao
               se recebe<=15 entao
                  escreval ("O zumbi fecha os olhos por um instante")
                  escreval ("Cura: 4")
                  vidaMons:= vidaMons-4
               senao
                    se recebe<=18 entao
                       escreval ("O monstro consegue se concentrar e suas feridas mais superficiais logo são fechadas")
                       escreval ("Cura: 8")
                       vidaMons:= vidaMons-8
                    senao
                         se recebe>18 entao
                            escreval ("...")
                            escreval ("O corpo morto ri de forma sádica enquanto suas feridas são curadas")
                            escreval ("Cura máxima")
                            vidaMons:= vidaMons-10
                         fimse
                    fimse
               fimse
          fimse
     fimse
outrocaso
         escreval ("O monstro parece um pouco confuso")
fimescolha
se vida>25 entao
   vic:=1
senao
     se vidaMons>19 entao
        vic:=1
     fimse
fimse
ate vic=1
    se vida>25 entao
escreval ("Você perdeu, fim de jogo")
Fimalgoritmo
fimse
se vidaMons>19 entao
   escreval ("Monstro derrotado!")
fimse
escreval ("Após a ardua batalha, você vê o corpo do monstro desaparecer em pó")
escreval ("Sua energia foi restaurada")
vida:=0
vic:=0
escreval ("")
escreval ("Onde havia o corpo morto, agora resta uma pequena faca")
escreval ("Deseja pegar?")
escreval ("1-Pegar")
escreval ("2-Não pegar")
leia (item[0])
escolha (item[0])
caso 1
     escreval ("Você agarra a faca e a coloca em sua bolsa")
     escreval ("FACA OBTIDA")
     //item 0= faca
caso 2
     escreval ("Você ignora a faca e continua seu caminho")
outrocaso
         escreval ("Você ignora a faca")
fimescolha
escreval ("Você passa por cima das cinzas do corpo putrido")
escreval ("A sua frente você vê três caminhos")
escreval ("1- Caverna do deus sol: Lendas contam de uma espada sagrada forjada pelo fogo de um dragão solar...")
escreval ("2- Castelo de cartas: Um castelo feito de papel, dizem que a dona é uma poderosa maga de 2.000 anos...")
escreval ("3- Tumba maldita: Diversas pessoas tem dito ter avistado um cavaleiro de armadura enferrujada andando por ali...")
escreval ("")
escreval ("Você sente suas pernas tremendo, por qual caminho você caminhará?")
leia (camin)
escolha (camin)
caso 1
     escreval ("Você caminha até a entrada da caverna, uma estranha luz está emergindo de seu fundo")
     escreval ("")
     escreval ("Você continua a andar pelo interior da caverna")
     escreval ("Seu corpo se aquece pouco a pouco enquanto você anda em direção a luz estranha")
     escreval ("Sua pele começa a suar, você sente que existe algo perigoso a frente")
     escreval ("")
     escreval ("")
     escreval ("A luz parece cada vez ficar mais próxima, uma sáida talvez?")
     escreval ("Ao se aproximar, você observa que aquela não é a sáida, mas sim um ponto mais fundo da caverna, onde você consegue observar centenas de milhares de peças de ouro, jóias e relíqueas...")
     escreval ("Você começa a descer com cuidado, pulando de pedra em pedra")
     escreval ("Um rugido ecoa do fundo da caverna...")
     escreval ("")
     escreval ("???: Já faz alguns milenios desde que um humano não vem aqui... adimito que fiquei entediado")
     escreval ("")
     escreval ("Você observa a origem da voz e enquanto força seus olhos consegue ver um dragão escondido enterrado entre o ouro")
     escreval ("")
     escreval ("Dragão: Veremos se você consegue me entreter, humano...")
     escreval ("")
     escreval ("O dragão ruge novamente, estremecendo o chão fazendo que o ouro se espalhe")
     escreval ("Do chão abaixo de você se abre, você cai cercado por paredes douradas...")
     escreval ("")
     escreval ("Você observa no alto do coliseu de ouro, três figuras imponentes te observarem...")
     escreval ("Um esqueleto dourado pula para dentro do coliseu, estremecendo o chão e te fazendo afundar mais")
     escreval ("O esqueleto tem vestes típicas de um guerreiro viking coberto em ouro, ele aponta seu machado de uma mão para você de forma ameaçadora...")
     escreval ("")
     escreval ("")
     escreval ("Você esá em COMBATE")
     escreval ("")
     escreval ("Inimigos: ESQUELETO VIKING")
     vidaVik:=0
     //arq: 20 esc: 35 gue:25
     repita
           escreval ("")
           escreval("turno:", nome)
           escreval ("")
           escreval ("1- Atacar: Você ataca o inimigo inflingindo dano")
           escreval ("2- Curar: Você cura sua vida")
           escreval ("3- Inspecionar: Você descobre a quantidade de vida total ou restante de um inimigo")
           escreval ("4- Ataque especial: Um ataque potente com altas chances de acerto")
           escreval ("5- Usar item: Utiliza um item aleatorio do inventário")
           escreval ("")
           escreval ("Você se vê frente a frente com o corpo morto, qual sua ação?")
           escreval ("")
           escreval (nome,", Dano recebido:", vida)
           escreval ("Esqueleto Viking, vida restante:", 25-vidaVik)
           escreval("")
           leia (acaoI)
           escolha (acaoI)
           caso 1
                escreval ("Você junta sua coragem e ataca em uma investida contra o grande esqueleto")
                recebe:= rodarDado()
                escreval(recebe)
                se recebe<=5 entao
                   escreval ("Você erra seu ataque, abrindo sua guarda")
                   escreval ("O esqueleto rapidamente aproveita a oportunidade e te acerta com seu machado, te jogando contra a parede")
                   escreval ("dano recebido: 8")
                   vida:= vida+8
                senao
                     se recebe<=10 entao
                        escreval ("Você erra o ataque o esqueleto balança seu machado, mas você consegue se afastar antes do machado te acertar")
                     senao
                          se recebe<=15 entao
                             escreval ("Seu ataque é rapído, raspando contra a armadura da criatura")
                             escreval ("Dano: 4")
                             vidaMons:= vidaMons+4
                          senao
                               se recebe<=18 entao
                                  escreval ("Você golpeia o peito da criatura em um golpe ascendente, ela parece afetada")
                                  escreval ("Dano: 6")
                                  vidaMons:= vidaMons+6
                               senao
                                    se recebe>18 entao
                                       escreval ("...")
                                       escreval ("Uma luz ressoa pelos seus punhos, você sente todos seus músculos serem comprimidos em prol de um único ataque")
                                       escreval ("Dano máximo")
                                       vidaMons:= vidaMons+10
                                    fimse
                               fimse
                          fimse
                     fimse
                fimse
           caso 2
                escreval ("Você concentra sua energia com o objetivo de se curar")
                se vida=0 entao
                   escreval ("Vida já completa")
                senao
                     ecebe:= rodarDado()
                     escreval(recebe)
                     se recebe<=5 entao
                        escreval ("Tem muito barulho a sua volta, você não consegue se curar")
                        escreval ("O viking aproveita sua vulnerabilidade e ataca")
                        escreval ("Dano recebido: 6")
                        vida:= vida+6
                     senao
                          se recebe<=10 entao
                             escreval ("O monstro salta em direção a você, não te dando espaço para se curar")
                          senao
                               se recebe<=15 entao
                                  escreval ("Você se concentra e consegue se curar durante um curto periodo")
                                  escreval ("Cura recebida: 8")
                                  vida:= vida-8
                               senao
                                    se recebe<=18 entao
                                       escreval ("O corpo decrépto se afasta, te dando tempo de se curar")
                                       escreval ("Cura recebida: 14")
                                       vida:= vida-14
                                    senao
                                         se recebe>18 entao
                                            escreval ("...")
                                            escreval ("Sua mente alcança um estágio de concentração máxima, seu corpo começa a aquecer enquanto seus ferimentos expostos se fecham..."
                                            escreval ("Cura máxima")
                                            vida:= vida-21
                                         fimse
                                    fimse
                               fimse
                          fimse
                     fimse
                fimse
           caso 3
                escreval ("Você força seus olhos, tentando analisar o inimigo a sua frente")
                escreval ("")
                se vidaMons>20 entao
                   escreval ("O esqueleto aparenta estar fraco, mal conseguindo segurar seu machado")
                senao
                     se vidaMons<=18 entao
                        escreval ("O monstro aparenta estar cansado")
                     senao
                          se vidaMons<=15 entao
                             escreval ("O esqueleto parece ferido mas determinado a terminar este confronto")
                          senao
                               se vidaMons<=10 entao
                                  escreval ("O viking sorri com poucos ferimentos enquanto se prepara")
                               senao
                                    se vidaMons<=8 entao
                                       escreval ("O esqueleto sorri de forma malévola enquanto prepara um ataque"
                                    fimse
                               fimse
                          fimse
                     fimse
                fimse
           caso 4
                se esp=0 entao
                   escreval ("Você não possui ataques especiais")
                senao
                     se arma=1 entao
                        escreval ("Você agarra o cabo de sua espada com força enquanto a lâmina brilha sobre a luz do ouro")
                        escreval ("Você usa INVESTIDA FINAL")
                        escreval ("Você corre em direção ao esqueleto enquanto sua lâmina é arrastada contra o ouro")
                        escreval ("Um flash branco puro é produzido pela espada enquanto ela parte o esqueleto guerreiro")
                        vidaVik:=+vidaVik20
                        escreval ("Dano: 20")
                        esp:= esp-1
                        escreval ("Você possui ", esp, " ataques especiais")
                     senao
                          se arma=2 entao
                             escreval ("Você agarra o cabo do grande martelo com força enquanto produz uma sombra acima do esqueleto")
                             escreval ("Você usa TERROR SÍSMICO")
                             escreval ("Você bate com seu martelo no chão criando um tremor imenso no solo")
                             escreval ("O Viking sente o tremor sob seus pés, em poucos instantes o chão se abre revelando uma explosão concentrada")
                             vidaVik:=vidaVik+20
                             escreval ("Dano: 20")
                             esp:= esp-1
                             escreval ("Você possui ", esp, " ataques especiais")
                          senao
                               se arma=3 entao
                                  escreval ("Você veste seu soco ingles enquanto encara o seu oponente como um predador faminto")
                                  escreval ("Você usa RAJADA ALI")
                                  escreval ("Você avança contra o esqueleto com sua guarda alta, surpreso com sua investida, o inimigo perde o equilíbrio abrindo sua guarda")
                                  escreval ("Você desfere uma rajada de socos contra o Viking, ele tenta se defender mas logo perde a consciência")
                                  vidaVik:= vidaVik+20
                                  escreval ("Dano: 20")
                                  esp:= esp-1
                                  escreval ("Você possui ", esp, "  ataques especiais")
                               senao
                                    escreval ("Você arma sua guarda, preparado um ataque")
                                    escreval ("Você usa INVESTIDA VELOZ")
                                    escreval ("Você avança contra o corpo esquelético com sua guarda alta, surpreso com sua investida, o inimigo perde o equilíbrio abrindo sua guarda")
                                    escreval ("Você desfere uma rajada de socos contra o corpo do monstro, ele tenta suportar os ataques...")
                                    vidaVik:= vidaVik+20
                                    escreval ("Dano: 20")
                                    esp:= esp-1
                                    escreval ("Você possui ", esp, " ataques especiais")
                               fimse
                          fimse
                     fimse
                fimse
           caso 5
                escreval ("Você coloca a mão dentro de sua bolsa procurando algo útil...")
                se item[0]=1 entao
                   escreval ("Você agarra uma faca pequena e avança contra o monstro")
                   escreval ("Você espera até se aproximar o suficiente do Viking e enfinca a faca em sua armadura")
                   escreval ("Dano: 10")
                   vidaVik:= vidaVik+10
                   item[0]:= 0
                senao
                     escreval ("Você não encontra nada...")
                fimse
           fimescolha
escreval ("Turno: Esqueleto Viking")
turno:= randi(2)
escolha (turno)
caso 1
     escreval ("Esqueleto ergue seu machado")
     recebe:=rodarDado
     se recebe<=5 entao
        escreval ("O monstro ataca, você desvia do ataque enquanto o machado se colide ao chão e se prende ao ouro")
        escreval ("Rapidamente aproveita a oportunidade e ataca")
        escreval ("Dano: 5")
        vidaVik:= vidaVik+5
     senao
          se recebe<=10 entao
             escreval ("O monstro o ataca, mas você se desvia para trás criando distância")
          senao
               se recebe<=15 entao
                  escreval ("O esqueleto te ataca, você tenta se desviar mas o ataque acaba raspando contra você, cortando seu peito")
                  escreval ("Dano recebido: 4")
                  vida:= vida+4
               senao
                    se recebe<=18 entao
                       escreval ("O monstro avança de maneira inesperada, atingindo com força seu estômago com um soco")
                       escreval ("Dano recebido: 8")
                       vida:= vida+8
                    senao
                         se recebe>18 entao
                            escreval ("...")
                            escreval ("Você sente seu corpo se arrepiar, o esqueleto agora exala uma aura caçadora, correndo como um animal faminto contra você")
                            escreval ("Dano máximo recebido")
                            vida:= vida+10
                         fimse
                    fimse
               fimse
          fimse
     fimse
caso 2
     escreval ("Você vê o monstro se concentrar")
     recebe:= rodarDado()
     se recebe<=5 entao
        escreval ("Você aproveita a oportunidade e atinge um golpe rápido contra o peito do monstro")
        escreval ("Dano: 2")
        vidaVik:= vidaVik+2
     senao
          se recebe<=10 entao
             escreval ("Você tenta aproveitar a oportunidade para desferir um golpe, mas logo o monstro se defende")
          senao
               se recebe<=15 entao
                  escreval ("O esqueleto fecha os olhos por um instante")
                  escreval ("Cura: 4")
                  vidaVik:= vidaVik-4
               senao
                    se recebe<=18 entao
                       escreval ("O monstro consegue se concentrar e suas feridas mais superficiais logo são fechadas")
                       escreval ("Cura: 8")
                       vidaMons:= vidaMons-8
                    senao
                         se recebe>18 entao
                            escreval ("...")
                            escreval ("O esqueleto solta uma gargalhada de forma sádica enquanto suas feridas são curadas")
                            escreval ("Cura máxima")
                            vidaMons:= vidaMons-10
                         fimse
                    fimse
               fimse
          fimse
     fimse
outrocaso
cont:= randi(2)
escolha (cont)
caso 1
     escreval ("O monstro parece um pouco confuso, você tenta atacar mas logo é acertado por uma flecha de origem misteriosa")
     escreval ("Dano recebido: 5")
     vida:= vida+5
caso 2
     escreval ("O monstro parece um pouco confuso")
     fimescolha
fimescolha
se vida>25 entao
   vic:=1
senao
     se vidaVik>24 entao
        vic:=1
     fimse
fimse
ate vic=1
se vida>25 entao
   escreval ("Você perdeu, fim de jogo")
Fimalgoritmo
fimse
se vidaVik>24 entao
   escreval ("Monstro derrotado!")
   escreval ("Vida restaurada")
   vida:=0
   vic:=0
fimse
escreval ("O esqueleto cai, seus ossos se tornando um com o ouro no chão")
escreval ("Você tenta controlar sua respiração enquanto olha em volta procurando uma forma de escapar")
escreval("")
escreval("Uma risada maléfica pode ser ouvida a cima do coliseu...")
escreval("O as paredes começam a tremer e crescer enquanto uma delas do coliseu se abrem revelando um tunel feito de ouro")
escreval("Dragão: Sinta-se honrado, fiz este desafio especialmente para você")
escreval("Dragão: Agora vá, corra e se esconda como o rato que é...")
escreval("A risada do dragão ecoa enquanto você pondera entre morrer esmagado pelo ouro dentro ou fora do suspeito túnel")
escreval("...")
escreval("A escolha de fato não é difícil")
escreval("Você corre em direção ao túnel, se embrenhando entre duas paredes de ouro")
escreval("Com dificuldade você passa pelas paredes")
escreval("")
escreval("Dragão: Está sala possui 6 cômodos, cada um com 2 ou mais caminhos")
escrev al("Dragão: Cada caminho errado escolhido,te levará de volta a está sala")
escreval("Dragão: Seja breve, você tem pouco tempo...")
time:=8
enquanto (tunel<>7) ou (vida<19) faca
         se tunel=0 entao
            escreval ("Você se vê em frente a primeira bifurcação")
            escreval ("1. Esquerda")
            escreval ("2. Direita")
            leia (tunelEsc)
            escolha (tunelEsc)
            caso 1
                 escreval ("Você corre pelo corredor da esquerda e se depara com uma segunda bifurcação diferente da ultima")
                 tunel:= 1
                 time:= time-1
            caso 2
                 escreval ("Você corre pelo corredor da direita e acaba se deparando com um corredor sem saida")
                 escreval ("Você se vê obrigado a retornar")
                 tunel:=0
                 time:= time-1
         fimse
se tunel=1 entao
   escreval ("O tunel treme parecendo frágil")
   escreval ("Você acelera seus passos")
   escreval ("1. Esquerda")
   escreval ("2. Direita")
   leia (tunelEsc)
   escolha (tunelEsc)
   caso 2
        escreval ("Você corre pelo corredor da direita e se depara com uma nova sala diferente da ultima")
        tunel:= 2
        time:= time-1
   caso 1
        escreval ("Você corre pelo corredor da esquerda e acaba se vendo de volta a primeira sala")
        time:= time-1
        tunel:=0
fimse
fimenquanto
fimalgoritmo
