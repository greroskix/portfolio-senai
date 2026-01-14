Algoritmo "Enquanto"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 10/04/2024
Var
// Seção de Declarações das variáveis 
chute, num, aux: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
num<- randi(100)
escreval("Vamos descobrir qual número eu estou pensando.")
escreval()
enquanto (chute<>num) e (aux<>5) faca
         escreval("Digite um Número:")
         leia(chute)
         aux<- aux+1
escreva()
         se chute>num entao
            escreval("Seu chute e maior que o número escolhido.")
            senao
                 se chute<num entao
                    escreval("Seu chute e menor que o número escolhido.")
                 senao
                      escreval()
                 fimse
         fimse
escreval()
fimenquanto
se (aux<=5) e (chute=num) entao
   escreval("Parabéns! Você acertou!")
   escreval("Numero de Tentativas Utilizadas:", aux)
   senao
        escreval("Você perdeu.")
        escreval("Numero de Tentativas limites utilizadas.")
fimse



Fimalgoritmo