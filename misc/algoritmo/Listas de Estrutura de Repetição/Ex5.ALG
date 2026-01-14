Algoritmo "exercicio5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alces Zanatta Greroski
// Data atual  : 27/03/2024
Var
// Seção de Declarações das variáveis 
i, num, maior, menor: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
menor<- 1000
maior<- 0
para i de 1 ate 50 faca
num<- randi(1000)
escreval(num)
      se(num>maior) entao
      maior<- num
      fimse
           se(num<menor) entao
           menor<- num
           fimse
fimpara
escreval()
escreval("O maior número foi: ", maior)
escreval("O menor número foi: ", menor)
Fimalgoritmo