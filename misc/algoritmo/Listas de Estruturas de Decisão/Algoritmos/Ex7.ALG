Algoritmo "Exercicio7"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 13/03/2024
Var
// Seção de Declarações das variáveis 
a, b, c : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Bora deixar 3 números em ordem crescente.")
escreval()
escreval("Digite o primeiro número:")
leia(a)
escreval("Digite o segundo número:")
leia(b)
escreval("Digite o terceiro número:")
leia(c)
escreval()
se((a>=b) e (a>=c) e (b>=c)) entao
   escreval("A ordem crescente é:", c, " ", b, " ",a )
senao
     se((a>=b) e (a>=c) e (c>=b)) entao
               escreval("A ordem crescente é:", b, " ", c, " ",a)
     senao
          se((b>=a) e (b>=c) e (a>=c)) entao
                    escreval("A ordem crescente é:", c, " ", a, " ",b)
          senao
               se((b>=a) e (b>=c) e (c>=a)) entao
                         escreval("A ordem crescente é:", a, " ", c, " ",b)
               senao
                    se((c>=a) e (c>=b) e (a>=b)) entao
                              escreval("A ordem crescente é:", b, " ", a, " ",c)
                    senao
                         se((c>=a) e (c>=b) e (b>=a)) entao
                                   escreval("A ordem crescente é:", a, " ", b, " ",c)
                         fimse
                    fimse
               fimse
          fimse
     fimse
fimse
Fimalgoritmo