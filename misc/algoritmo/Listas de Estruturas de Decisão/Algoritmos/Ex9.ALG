Algoritmo "Exercicio9"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 13/03/2024
Var
// Seção de Declarações das variáveis 
nascimento, ano, idade: inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Vamos ver se você e Infantil, Juvenil, Adulto ou Idoso.")
escreval()
escreval("Digite o ano do seu nascimento")
leia(nascimento)
escreval("Digite o ano em que estamos")
leia(ano)
idade<- ano-nascimento
escreval()
se ((idade>=0) e (idade<=10)) entao
   escreval("Você é: Infantil.")
senao
     se ((idade>=11) e (idade<=17)) entao
        escreval("Você é: Juvenil.")
     senao
          se ((idade>=18) e (idade<59)) entao
             escreval("Você é: Adulto.")
          senao
               se(idade>=60) entao
                              escreval("Você é: Idoso")
               fimse
          fimse
     fimse
fimse

Fimalgoritmo
