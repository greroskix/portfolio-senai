Algoritmo "multipla-escolha"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 06/03/2024
Var
// Seção de Declarações das variáveis 
a, b, resultado: real
operacao: caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Vamos fazer aqui uma operação Matemática")
escreval()
escreval("Digite um número:")
leia(a)
escreval()
escreval("Digite outro número:")
leia(b)
escreval()
escreval("Agora digite o Operador:")
leia(operacao)
escreval()
escolha(operacao)
caso "+"
     resultado<- a+b
     escreval("O resultado foi:",resultado)
caso "-"
     resultado<- a-b
     escreval("O resultado foi:",resultado)
caso "*"
     resultado<- a*b
     escreval("O resultado foi:",resultado)
caso "/"
     resultado<- a/b
     escreval("O resultado foi:",resultado)
outrocaso
         escreval("Opção Inválida.")
fimescolha


Fimalgoritmo