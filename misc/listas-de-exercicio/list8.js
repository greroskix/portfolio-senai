// Exercício 1:

console.log("Exercício 1:")
let ex1 = 1
do{
    console.log(ex1)
    ex1+=1 
} while (ex1 <=20)
console.log("")

// Exercício 2:

console.log("Exercício 2:")
let ex2
do { ex2 = prompt("Você deseja continuar? s/n")
    if(ex2 == "n"){
        console.log("Ok")
    }
    else{
        console.log("Então vamos continuar")
    }
} while(ex2 == "s")
console.log("")

// Exercício 3:

console.log("Exercício 3:")
let ex3 = 1
let num_user = prompt("Digite um número:")
do{
    console.log(ex3)
    ex3+=1
}while(ex3 <= num_user)
console.log("")

// Exercício 4:

console.log("Exercício 4:")
let ex4 = 1
do{
    console.log(ex4)
    ex4+=2
}while(ex4 <= 31)
console.log("") 

// Exercício 5:

console.log("Exercício 5:")
let ex5 = 1
do{
    let numeros = Number(prompt("Digite um número:"))
    if(numeros > 0){
        console.log(numeros, ":O número e positivo.")
    } else if (numeros < 0) {
        console.log(numeros,":O número e positivo.")
    } else if (numeros == 0){
        console.log(numeros,":O número e igual a Zero")
    }
    ex5+=1
}while(ex5 <= 5)
console.log("") 

// Exercício 6:

console.log("Exercício 6:")
let ex6 = prompt("Você deseja fazer uma conta? ( digite s para continuar )")
do{ 
    if(ex6 == "s"){
    let num1 = Number(prompt("Digite um número:"))
    let num2 = Number(prompt("Digite outro número"))
    let soma = num1 + num2
    console.log("Valor da conta:", soma)
    }
    ex6 = prompt("Caso deseja continuar, digite 's', caso queira parar digite qualquer outra tecla");
}while(ex6 == "s")  

    