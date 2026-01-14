Algoritmo "Ex4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 17/04/2024
Var
// Seção de Declarações das variáveis 
num, conta, i: inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("Vamos fazer a tabuada do número escolhido.")
escreval("Para encerrar digite: 0")
escreval()
escreval("Digite um número:")
repita
leia(num)
escreval("Tabuada do: ", num)
escreval()
para i de 0 ate 10 faca
     escreval(num, " . ", i, " = ", num*i)
fimpara
escreval()
ate num=0

Fimalgoritmo