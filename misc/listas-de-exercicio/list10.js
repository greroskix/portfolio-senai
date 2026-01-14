// Exercício 1:

console.log("Ex1:")
let filmes = ["Batman - The Dark Knight", "O Pianista", "O Farol"]
console.log(filmes[0])
console.log("")

// Exercício 2:

console.log("Ex2:")
let frutas = ["Mexerica", "Kiwi", "Uva", "Laranja", "Limão"]
console.log(frutas[2])
console.log("")

// Exercício 3:

console.log("Ex3:")
let cores = ["Vermelho", "Verde", "Azul"]
cores.push("Amarelo")
for(let ex3 = 0; ex3 < cores.length; ex3++){
    console.log(cores[ex3])
}
console.log("")

// Exercício 4:

console.log("Ex4:")
let numeros = [7, 77, 777, 7777]
numeros.pop()
for(let ex4 = 0; ex4 < numeros.length; ex4++){
    console.log(numeros[ex4])
}
console.log("")

// Exercício 5:

console.log("Ex5:")
let cidades = ["New York", "Tokyo"]
cidades.unshift("London")
for(let ex5 = 0; ex5 < cidades.length; ex5++){
    console.log(cidades[ex5])
}
console.log("")

// Exercício 6:

console.log("Ex6:")
let animais = ["Gato", "Pantera", "Leopardo"]
animais.shift()
for(let ex6 = 0; ex6 < animais.length; ex6++){
    console.log(animais[ex6])
}
console.log("")

// Exercício 7:

console.log("Ex7:")
let carros = ["Porshe", "McLaren", "Bugatti", "Ferrari"]
console.log(carros.length)
console.log("")

// Exercício 8:

console.log("Ex8:")
let receba = [7, 77, 777]
receba.unshift(3)
receba.pop()
receba.shift()
console.log(receba)
console.log(receba.length)