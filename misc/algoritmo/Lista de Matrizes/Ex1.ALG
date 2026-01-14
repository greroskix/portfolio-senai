Algoritmo "Ex1"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 29/05/2024
Var
// Seção de Declarações das variáveis 
mat: vetor[1..3,1..3] de inteiro
i, x: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para i de 1  ate 3 faca
     para x de 1 ate 3 faca
          mat[i, x] <- randi(100)
     fimpara
fimpara
para i de 1 ate 3 faca
     para x de 1 ate 3 faca
          escreva(mat[i, x]:3)
     fimpara
     escreval()
fimpara
Fimalgoritmo