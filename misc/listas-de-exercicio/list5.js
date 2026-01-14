// Exercício 1

console.log("Ex1:")
let idade = prompt("Qual a sua idade?")
let carteiramotorista = true
if (idade >=18 && carteiramotorista == true ){
    console.log("Você pode dirigir.")
}else {
    console.log("Você não pode dirigir.")
}
console.log("")

// Exercício 2

console.log("Ex2:")
let anos = prompt("Quantos anos de empressa você tem?")
let projetos = prompt("Quantos projetos você já realizou?")
if (anos >= 5 || projetos >= 10){
    console.log("Você está elegível para promoção.")
}else {
    console.log("Você não está elegível para promoção.")
}
console.log("")

// Exercício 3

console.log("Ex3:")
let eventoidade = prompt("Qual a sua idade?")
if(eventoidade >=18 && eventoidade <=30){
    console.log("Você pode entrar no evento.")
}else {
    console.log("Você não pode entrar no evento.")
}
console.log("")

// Exercício 4

console.log("Ex4:")
let candidatoidade = prompt("Qual a sua idade?")
let experiencia = true
if (candidatoidade >21 && experiencia == true){
    console.log("Você foi aceito para a vaga.")
}else {
    console.log("Você não foi aceito para a vaga.")
}
console.log("")

// Exercício 5

console.log("Ex5:")
let user = prompt("Digite seu nome de usuário:")
let senha = prompt("Digite sua senha:")
if (user == "admin" && senha == 1234){
    console.log("Login bem-sucedido.")
}else {
    console.log("Nome de usuário ou senha incorretos.")
}
console.log("")

// Exercício 6

console.log("Ex6:")
let num = prompt("Digite um número:")
if (num >=10 && num <=20){
    console.log("O número está dentro do intervalo entre 10 e 20.")
}else if (num >=30 && num <=50){
    console.log("O número está dentro do intervalo entre 30 e 50.")
}else {
    console.log("Ele não está dentro do intervalo de 10 e 20 nem 30 e 50.")
}
console.log("")

// Exercício 7

console.log("Ex7:")
let numero = prompt("Digite um número:")
if (numero <10 || numero >100 || numero == 50){
    console.log("O número é aceito.")
}else {
    console.log("O número não é aceito.")
}