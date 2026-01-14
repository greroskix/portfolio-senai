Algoritmo "exercicio4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 27/03/2024
Var
// Seção de Declarações das variáveis 
i, num, conta: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
conta<- 1
escreval("Digite um número:")
leia(num)
escreval()
para i de 1 ate num faca
     se i mod 2 = 0 entao
     conta<- conta*i
     fimse
fimpara
escreval("Resultado das multiplicações :",conta)


Fimalgoritmo
