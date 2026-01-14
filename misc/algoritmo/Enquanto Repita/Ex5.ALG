Algoritmo "Ex5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : André Aparecido Alves Zanatta Greroski
// Data atual  : 17/04/2024
Var
// Seção de Declarações das variáveis 
nome, senha: caractere
try: inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Login:")
escreval()
enquanto (try<>3) e ((nome<>"AndreGreroski") ou (senha<>"SENAI123")) faca
         escreval("Escreva seu Nome:")
         leia(nome)
         escreval()
         escreval("Escreva sua Senha")
         leia(senha)
         escreval()
         try<- try+ 1
         se (nome="AndreGreroski") E (senha="SENAI123") entao
            escreval("Login bem sucedido!")
         senao
              escreval("Usuário ou Senha incorretos, você já utilizou ", try, " tentativas.")
         fimse
         escreval()
se try>3 entao
   Escreval("Credenciais inválidas. Quantidade de tentativas excedidas. Tente novamente mais tarde")
fimse
fimenquanto
Fimalgoritmo
