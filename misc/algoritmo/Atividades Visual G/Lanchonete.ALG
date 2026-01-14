Algoritmo "lanchonete"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 10/04/2024
Var
// Seção de Declarações das variáveis 
opc, quant, p, h, s: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Menu Lanchonetes")
escreval()
repita
      escreval("1. Pizza - R$48,00")
      escreval("2. Hambúrguer - R$22,00")
      escreval("3. Suco Natural, 500ml - R$8,00")
      escreval("4. Finalizar Pedido")
      escreval()
      escreval("Escolha sua opção:")
      leia(opc)
escolha(opc)
caso 1
     escreval("Quantas pizza você deseja?")
     leia(quant)
     p<- 48*quant
caso 2
     escreval("Quantos hamburgueres você deseja?")
     leia(quant)
     h<- 22*quant
caso 3
     escreval("Quantos sucos você deseja?")
     leia(quant)
     s<- 8*quant
escreval()
caso 4
     escreval("Total do Pedido: R$", p+h+s)
outrocaso
         escreval("Opção Inválida.")
fimescolha
ate opc=4
Fimalgoritmo