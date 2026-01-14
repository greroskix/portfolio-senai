Algoritmo "Ex5"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Greroski, Samuel Costa
// Data atual  : 15/05/2024
Var
// Seção de Declarações das variáveis 
vet: vetor[1..7] de real
i: inteiro
soma: real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("Escreva 7 números para realizamos a soma:")
para i de 1 ate 7 faca
     leia(vet[i])
     soma<- soma+vet[i]
fimpara
escreval()
escreval("A soma dos números são:", soma)
Fimalgoritmo