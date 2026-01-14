Algoritmo "Ex3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 17/04/2024
Var
// Seção de Declarações das variáveis 
num: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Vamos ver se o seu número escolhido e Positivo, Negativo ou Zero.")
escreval("(Obs: Para encerrar o programa, digite 0.)")
escreval()
escreval("Digite um número:")
repita
leia(num)
      se (num>0) entao
         escreval("Seu número e Positivo.")
         escreval()
      senao
           se (num<0) entao
              escreval("Seu número e Negativo.")
              escreval()
           senao
                se (num=0) entao
                escreval("Seu número e igual a Zero.")
                escreval()
                fimse
           fimse
      fimse
ate num=0


Fimalgoritmo