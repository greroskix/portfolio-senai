Algoritmo "Ex6"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 17/04/2024
Var
// Seção de Declarações das variáveis
num, x, y, forma: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("Vamos fazer um desenho de acordo com o número escolhido.")
escreval()
repita
escreval("Digite um Número:")
leia(num)
escreval()
escreval("Você quer escolher qual forma?")
escreval("1 - Quadrado")
escreval("2 - Triângulo")
leia(forma)
escolha(forma)

caso 1
enquanto y<Num Faca
   y<- y + 1
   x<-0
   enquanto x<Num Faca
   x<- x+1
   escreva("*")
   fimenquanto
   escreval()
   fimenquanto
   y<- 0
   x<- 0
Escreval()

caso 2
enquanto y<Num Faca
         y <- y + 1
         x<- 0
         Enquanto Não(x=y) faca
         x<- x+1
         Escreva("*")
         Fimenquanto
         Escreval()
fimenquanto
outrocaso
         escreval()
         escreval("Opção Inválida, Digite 1 ou 2.")
fimescolha
ate (forma=1) ou (forma=2)

Fimalgoritmo

