// Exercício 1:

console.log("Ex1:")
let ex1 = function(){
    let nome = prompt("Digite seu nome:")
    console.log("Olá,", nome, "como vai?")
}
ex1()
console.log("")

// Exercício 2:

console.log("Ex2:")
let ex2 = function(){
    let num1 = Number(prompt("Digite o primeiro número para uma adição:"))
    let num2 = Number(prompt("Agora digite o segundo número:"))
    let resultado = num1 + num2
    console.log(resultado)
}
ex2()
console.log("")

// Exercício 3:

console.log("Ex3:")
let ex3 = function(){
    let base = Number(prompt("Vamos descobrir a Área de um retângulo, digite o valor da base:"))
    let altura = Number(prompt("Agora digite o valor da altura do retângulo:"))
    let resultado = base * altura
    console.log(resultado)
}
ex3()
console.log("")

// Exercício 4:

console.log("Ex4:")
let ex4 = () => {
    let num = Number(prompt("Digite um número para fazermos o dobro dele:"))
    let result = num * 2
    console.log("O dobro de", num, "é:", result)
}
ex4()
console.log("")

// Exercício 5:

console.log("Ex5:")
let ex5 = () => {
    let num = Number(prompt("Digite um número para fazermos o quadrado dele:"))
    let result = num * num
    console.log("O quadrado de", num, "é:", result)
}
ex5()
console.log("")

// Exercício 6:

console.log("Ex6:")
let ex6 = () => {
    let idade = Number(prompt("Digite sua idade:"))
    if(idade >= 18){
        console.log("Você é maior da idade.")
    }else{
        console.log("Você e menor de idade.")
    }
}
ex6()
console.log("")

// Exercício 7:

console.log("Ex7")
let ex7 = () => {
    let media1 = Number(prompt("Vamos ver sua média, digite sua primeira nota:"))
    let media2 = Number(prompt("Digite sua segunda nota:"))
    let media3 = Number(prompt("Digite sua terceira nota:"))
    let media = (media1 + media2 + media3) /3
    console.log("Sua média foi:", media) 
}
ex7()