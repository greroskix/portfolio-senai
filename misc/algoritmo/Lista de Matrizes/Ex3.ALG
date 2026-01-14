Algoritmo "Ex3"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 29/05/2024
Var
// Seção de Declarações das variáveis 
mat: vetor[1..3, 1..3] de inteiro
i, x, maior, menor: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para i de 1  ate 3 faca
     para x de 1 ate 3 faca
          mat[i, x] <- randi(100)
     fimpara
fimpara
escreval("Matriz:")
escreval()
para i de 1 ate 3 faca
     para x de 1 ate 3 faca
          escreva(mat[i, x]:3)
     fimpara
     escreval()
fimpara
maior<- mat[i, x]
menor<- mat[i, x]
para i de 1 ate 3 faca
     para x de 1 ate 3 faca
          se mat[i, x] > maior entao
             maior<- mat[i, x]
          fimse
          se mat[i, x] < menor entao
             menor<- mat[i, x]
          fimse
     fimpara
fimpara
escreval()
escreval("Maior número: ", maior)
escreval("Menor número: ", menor)
Fimalgoritmo