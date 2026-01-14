Algoritmo "Exercicio5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 13/03/2024
Var
// Seção de Declarações das variáveis 
a, b, c, media : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Vamos ver se você foi aprovado.")
escreval()
escreval("Digite sua primeira nota:")
leia(a)
escreval("Digite sua segunda nota:")
leia(b)
escreval("Digite sua terceira nota:")
leia(c)
media<- (a+b+c)/3
escreval()
se((media>= 6) E (media <= 10)) entao
           escreval("Sua média foi:", media, ". Você foi aprovado.")
senao
           escreval("Sua média foi:", media, ". Você foi reprovado.")
fimse

Fimalgoritmo