Algoritmo "Ex6"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Greroski, Samuel Costa
// Data atual  : 15/05/2024
Var
// Seção de Declarações das variáveis 
vet: vetor[1..5] de inteiro
maior, menor, i: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Digite 5 números inteiro:")
para i de 1 ate 5 faca
     leia(vet[i])
fimpara
maior<- vet[i]
menor<- vet[i]
para i de 1 ate 5 faca
     se vet[i] > maior entao
        maior<- vet[i]
     fimse
     se vet[i] < menor entao
          menor<- vet[i]
     fimse
fimpara
escreval()
escreval("Número Maior:", maior)
escreval("Número Menor:", menor)



Fimalgoritmo
