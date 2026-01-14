Algoritmo "Ex4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Greroski, Samuel Costa
// Data atual  : 08/05/2024
Var
// Seção de Declarações das variáveis 
vet: vetor[1..10] de inteiro
num, i: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite um número:")
leia(num)
escreval()
para i de 1 ate 10 faca
     vet[i]<- randi(11)
fimpara
se vet[1]=num entao
   escreval("Existe.")
senao
     se vet[2]=num entao
        escreval("Existe.")
     senao
          se vet[3]=num entao
             escreval("Existe.")
          senao
               se vet[4]=num entao
                  escreval("Existe.")
               senao
                    se vet[5]=num entao
                       escreval("Existe.")
                    senao
                         se vet[6]=num entao
                            escreval("Existe.")
                         senao
                              se vet[7]=num entao
                                 escreval("Existe.")
                              senao
                                   se vet[8]=num entao
                                      escreval("Existe.")
                                   senao
                                        se vet[9]=num entao
                                           escreval("Existe.")
                                        senao
                                             se vet[10]=num entao
                                                escreval("Existe.")
                                             senao
                                                  escreval("Não existe.")
                                             fimse
                                        fimse
                                   fimse
                              fimse
                         fimse
                    fimse
               fimse
          fimse
     fimse
fimse
Fimalgoritmo