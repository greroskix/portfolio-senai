Algoritmo "exercicio6"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 27/03/2024
Var
// Seção de Declarações das variáveis 
i, num, inter: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
para i de 1 ate 10 faca
num<- randi(250)
escreval(num)
             se((num>=10) e (num<=150)) entao
             inter<- inter + 1
             fimse
fimpara
escreval()
escreval("Os números entre 10 ate 150 são: ", inter)

Fimalgoritmo