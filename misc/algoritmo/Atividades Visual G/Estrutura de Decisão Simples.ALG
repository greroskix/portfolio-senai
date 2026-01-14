Algoritmo "decisao-simples"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 06/03/2024
Var
// Seção de Declarações das variáveis 
nota: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Vamos ver se você foi Aprovado ou Reprovado.")
escreval()
escreval("Digite sua nota:")
leia(nota)
escreval()
se((nota>= 7) E (nota <= 10)) entao
           escreval("Você foi: Aprovado.")
senao
           escreval("Você foi: Reprovado.")
fimse

Fimalgoritmo