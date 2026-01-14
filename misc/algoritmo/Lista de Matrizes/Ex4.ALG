Algoritmo "Ex4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 29/05/2024
Var
// Seção de Declarações das variáveis 
mat: vetor[1..3, 1..3] de inteiro
i, x, linha, coluna: inteiro
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
escreval()
para x de 1 ate 3 faca
     linha<- 0
     coluna<- 0
     para i de 1 ate 3 faca
          coluna<- coluna+mat[i, x]
          linha<- linha+mat[x, i]
     fimpara
escreval()
escreval("Linha ",x, " = ", linha)
escreval("Coluna ",x, " = ", coluna)

fimpara

Fimalgoritmo