Algoritmo "Ex2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 29/05/2024
Var
// Seção de Declarações das variáveis 
mat: vetor[1..4,1..4] de real
i, x, num: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
para i de 1 ate 4 faca
     para x de 1 ate 4 faca
          escreva("Digite o valor da posição [", i, ",", x," ]: ")
          leia(mat[i, x])
     fimpara
fimpara
escreval()
escreva("Digite um número: ")
leia(num)
escreval("Os números da matriz que são maiores que o número escolhido são:")
escreval()
para i de 1 ate 4 faca
     para x de 1 ate 4 faca
          se mat[i, x] > num entao
             escreval("[", i, ",", x, " ]: ", mat[i, x])
          fimse
     fimpara
fimpara

Fimalgoritmo