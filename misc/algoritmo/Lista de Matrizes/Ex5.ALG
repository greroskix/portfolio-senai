Algoritmo "Ex5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 29/05/2024
Var
// Seção de Declarações das variáveis 
matx, maty, matres: vetor[1..3, 1..3] de inteiro
i, x: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

// Vetor 1
escreval("Matriz X:")
escreval()
para i de 1 ate 3 faca
     para x de 1 ate 3 faca
          matx[i, x]<- randi(20)
          escreva(matx[i, x]:3)
     fimpara
     escreval()
fimpara

// Vetor 2
escreval()
escreval("Matriz Y:")
escreval()
para i de 1 ate 3 faca
     para x de 1 ate 3 faca
          maty[i, x]<- randi(20)
          escreva(maty[i, x]:3)
     fimpara
     escreval()
fimpara

// Soma/Vetor 3
escreval()
escreval("Soma das Matrizes:")
escreval()
para i de 1 ate 3 faca
     para x de 1 ate 3 faca
          matres[i, x]<- matx[i, x] + maty[i, x]
          matres[x, i]<- matx[x, i] + maty[x, i]
          escreva(matres[i, x]:3)
     fimpara
     escreval()
fimpara

Fimalgoritmo