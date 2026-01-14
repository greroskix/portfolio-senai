// Exercício 1

console.log("Ex1:")
let semana = Number(prompt("Escolha um número entre 1 a 7:"))
switch (semana){
    case 1:
        console.log("Domingo")
        break
    case 2:
        console.log("Segunda-Feira")
        break
    case 3:
        console.log("Terça-Feira")
        break
    case 4:
        console.log("Quarta-Feira")
        break
    case 5:
        console.log("Quinta-Feira")
        break
    case 6:
        console.log("Sexta-Feira")
        break
    case 7:
        console.log("Sábado")
        break
    default:
        console.log("Número inválido, digite um número de 1 a 7.")
}
console.log("")

// Exercício 2

console.log("Ex2:")
let idade = Number(prompt("Digite a sua idade:"))
switch (idade){
    case 5:
        console.log("Infantil A.")
        break
    case 10:
        console.log("Infantil B.")
        break
    case 15:
        console.log("Juvenil A.")
        break
    case 20:
        console.log("Juvenil B.")
        break
    case 30:
        console.log("Adulto.")
        break
    default:
        console.log("Idade inválida. Insira 5, 10, 15, 20 ou 30.")
}
console.log("")

// Exercício 3

console.log("Ex3:")
let turno = (prompt("Digite o horário do turno: (M/V/N)"))
switch(turno){
    case "M":
        console.log("Bom dia!")
        break
    case "V":
        console.log("Boa tarde!")
        break
    case "N":
        console.log("Boa noite!")
        break
    default:
        console.log("Turno inválido. Insira M, V ou N.")
}
console.log("")

// Exercício 4

console.log("Ex4")
let num = Number(prompt("Digite um número de 1 a 5:"))
switch(num){
    case 1:
        console.log("Santos")
        break
    case 2:
        console.log("Corinthians")
        break
    case 3:
        console.log("São Paulo")
        break
    case 4:
        console.log("Palmeiras")
        break
    case 5:
        console.log("@pelota.do.rato IG")
        break
    default:
        console.log("Número fora do intervalo. Insira um valor entre 1 e 5.")
}
console.log("")

// Exercício 5

console.log("Ex5:")
let numero = Number(prompt("Digite um número de 1 a 4"))
switch(numero){
    case 1:
        console.log("Primavera.")
        break
    case 2:
        console.log("Verão")
        break
    case 3:
        console.log("Outono")
        break
    case 4:
        console.log("Inverno")
        break
    default: 
        console.log("Estação inválida. Insira um número de 1 a 4.")
}
