Algoritmo "Exercicio4"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 13/03/2024
Var
// Seção de Declarações das variáveis 
num1, num2, num3 : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Bora digitar 3 números e ver qual e o maior?")
escreval()
escreval("Digte o primeiro número:")
leia(num1)
escreval("Digte o segundo número:")
leia(num2)
escreval("Digite o terceiro número:")
leia(num3)
escreval()
se((num1>num2) e (num1>num3)) entao
   escreval("O primeiro número e o maior.")
senao
     se((num2>num1) e (num2>num3)) entao
                   escreval("O segundo número e o maior.")
     senao
          se((Num3>1) e (num3>2)) entao
                      escreval("O terceiro número e o maior.")
          fimse
     fimse
fimse

Fimalgoritmo