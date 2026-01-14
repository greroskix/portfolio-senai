// Exercício 1: 

console.log("Ex1:")
for(let ex1 = 1; ex1 <=30; ex1+=1){
    console.log(ex1)
}
console.log("")

// Exercício 2:

console.log("Ex2:")
for(let ex2 = 30; ex2 >=1; ex2--){
    console.log(ex2)
}
console.log("")

// Exercício 3:

console.log("Ex3:")
for(let ex3 = 0; ex3 < 5; ex3+=1){
    let num = prompt("Digite 5 números:")
    if (num >= 50) {
        console.log(num, ":Acima da Média.")
    } else {
        console.log(num, ":Abaixo da Média.")
    }
}
console.log("")

// Exercício 4:

console.log("Ex4:")
let ex4 = prompt("Digite um número para fazermos uma tabuada:")
console.log("Tabuda do", ex4, ":")
for(let mult = 1; mult <=10; mult+=1){
    let resultado = mult * ex4
    console.log(resultado)
}
console.log("") 

// Exercício 5:

console.log("Ex5:")
let ex5 = prompt("Digite o número de patinhos")
console.log("A música do patinhos!")
console.log("")
for (let patinhos = ex5; patinhos != 0; patinhos--){
    console.log(patinhos, "patinhos foram passear")
    console.log("Além das montanhas")
    console.log("Para brincar")
    console.log("A mamãe gritou: Quá, quá, quá, quá")
    console.log("Mas só", patinhos-1, "patinhos voltaram de lá.")
    console.log("")
}
console.log("A mamãe patinha foi procurar")
console.log("Além das montanhas")
console.log("Na beira do mar")
console.log("A mamãe gritou: Quá, quá, quá, quá")
console.log("E os patinhos voltaram de lá.")


// Exercício 6: 

console.log("Ex6:")
for(let ex6 = 0; ex6 < 10; ex6+=1){
    let idades = prompt("Digite 10 idades:")
    if(idades >=18){
        console.log(idades, ":Você e maior de idade.")
    }else {
        console.log(idades, ":Você e menor de idade.")
    }
}
console.log("")

// Exercício 7: 

console.log("Ex7:")
for(ex6 = 0; ex6 < 5; ex6++){
    let voto = prompt("Faça seu voto!")
    if(voto == 1){
        console.log("Você votou no Neymar Júnior!")
    }else if(voto == 2){
        console.log("Você votou no Lula!")
    }else if(voto == 3){
        console.log("Você votou no Bolsonaro!")
    }else if(voto == 4){
        console.log("Você votou no Gustavo Lima!")
    }else if(voto == 5){
        console.log("Você votou Nulo!")
    }else if(voto == 6){
        console.log("Você votou Branco!")
    }
}