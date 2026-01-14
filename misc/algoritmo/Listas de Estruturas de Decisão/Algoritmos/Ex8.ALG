Algoritmo "Exercicio8"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 13/03/2024
Var
// Seção de Declarações das variáveis 
dia, invalido: caractere
num: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Bora ver qual dia da semana e o número escolhido")
escreval()
escreval("Digite o número de 1 a 7:")
leia(num)
escreval()
escolha (num)
caso 1
dia<- "Segunda Feira"
caso 2
dia<- "Terça Feira"
caso 3
dia<- "Quarta Feira"
caso 4
dia<- "Quinta Feira"
caso 5
dia<- "Sexta Feira"
caso 6
dia<- "Sábado"
caso 7
dia<- "Domingo"
      outrocaso
invalido<- "Inválido"
fimescolha
se ((num>=1) e (num<=7)) entao
   escreval("O seu dia foi: ", dia)
senao
     escreval("Resposta ", invalido)
fimse
Fimalgoritmo