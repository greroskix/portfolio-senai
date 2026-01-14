// Exercício 1:

console.log("Exercício 1:")
let contador = 0
while(contador <= 10){
    console.log(contador) 
    contador+=1 
}
console.log("")

// Exercício 2:

console.log("Exercício 2:")
let numero = prompt("Digite um número:")
let multiplicador = 1
console.log("Tabuada do", numero)
while (multiplicador <=10){
    let resultado = numero * multiplicador
    console.log(numero, "x", multiplicador, "=", resultado)     
    multiplicador +=1
}
console.log("")

// Exercício 3:

console.log("Exercício 3:")
let contagem = 10
while(contagem >=1){
    console.log(contagem)
    contagem-=1
}
console.log("")

// Exercício 4:

console.log("Exercício 4:")
let senha = prompt("Digite a senha:")
while (senha != "12345") {
    senha = prompt("Senha incorreta, tente novamente:")
    if (senha == "12345") {
    }
}
console.log("Bem-Vindo(a)")
console.log("")

// Exercício 5:

console.log("Exercício 5:")
let numeros = 50
while(numeros <= 100){
    console.log(numeros) 
    numeros+=1 
}
console.log("")

// Exercício 6:

console.log("Exercício 6:")
let soma5 = 0
while(soma5 <= 100){
    console.log(soma5)
    soma5+=5
}
console.log("")

// Exercício 7:
console.log("Exercício 7:")
let ilike = 0
while(ilike < 5){
    console.log("Eu gosto de JavaScript")
    ilike+=1
    
}
console.log("")

// Exercício 8
console.log("Exercício 8:")
let nome = prompt("Escreva um nome:")
let num = prompt("Digite um número:")
let x = 0
while (x < num){
    console.log(nome)
    x+=1
}