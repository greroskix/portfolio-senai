Algoritmo "Área e perímetro do Circulo"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 28/02/2024
Var
// Seção de Declarações das variáveis 
raio, area, perimetro: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Bora descobrir a Área e Perímetro de um círculo!")
escreval()
escreval("Digite o Raio do Círculo:")
leia(raio)
escreval()
area<- pi*raio^2
perimetro<- 2*pi*raio
escreval("O resutaldo da área do círculo foi: ", area)
escreval("O resultado do perímetro do círculo foi: ", perimetro)

Fimalgoritmo