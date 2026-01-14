Algoritmo "decisao-encadeada"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 06/03/2024
Var
// Seção de Declarações das variáveis 
nota, exame, resultado: real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Vamos ver se você foi Aprovado ou Reprovado")
escreval()
escreval("Digite sua nota:")
leia(nota)
escreval()
se((nota>= 7) E (nota <= 10)) entao
   escreval("Você foi: Aprovado.")
senao
     escreval("Você foi para o Exame.")
escreval()
escreval("Digite a nota que você tirou no Exame:")
leia(exame)
escreval()
resultado<- nota+exame/2
     se(resultado>=6) entao
        escreval("Você foi: Aprovado.")
     senao
          escreval("Você foi: Reprovado.")
     fimse
fimse

Fimalgoritmo