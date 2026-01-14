Algoritmo "Ex7"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 29/05/2024
Var
// Seção de Declarações das variáveis
mat: vetor[1..2, 1..2] de inteiro
i, x, somax, somay: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
escreval("Matriz:")
escreval()
para i de 1  ate 2 faca
     para x de 1 ate 2 faca
          mat[i, x] <- randi(10)
          escreva(mat[i, x]:2)
     fimpara
     escreval()
fimpara
escreval()
escreval("Valores da Multiplicação:")
escreval()
somax<- mat[1,1]*mat[2,2]
somay<- mat[1,2]*mat[2,1]
escreval(somax)
escreval(somay)
escreval()
escreval("O determinante é: ", somax-somay, ".")


Fimalgoritmo