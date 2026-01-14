Algoritmo "Ex7"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Andre Aparecido Alves Zanatta Greroski
// Data atual  : 17/04/2024
Var
// Seção de Declarações das variáveis
num, f, m, opc: inteiro
pesom, pesof: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Vamos participar de uma pesquisa.")
escreval()
repita
      escreval("1 - Masculino.")
      escreval("2 - Feminino.")
      escreval("S - Finalizar Pesquisa.")
      escreval()
      escreval("Escolha seu Sexo.")
      leia(opc)
escolha (opc)
caso 1
     escreval()
     escreval("Qual o seu Peso?")
     leia(pesom)
     m<- m+1
caso 2
     escreval()
     escreval("Qual seu Peso?")
     leia(pesof)
     f<- f+1
caso 3
     escreval()
     escreval("Total de Homems que participaram: ", m)
     escreval("Total de Mulheres que participaram: ", f)
     escreval("O maior peso dos Homems: ", >pesom)
     escreval("O maior peso das Mulheres: ", >pesof)
     escreval("Porcentagem dos Homems acima de 90kg: ",)
     escreval("Porcentagem das Mulheres entre 75k e 80kg: ",)
fimescolha
ate opc=3

Fimalgoritmo