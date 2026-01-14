// Ex1:
function ex1(){
    let num = (document.getElementById("num").value)
    let arrendodamento1 = (Math.floor(num))
    let arrendodamento2 = (Math.ceil(num))

    let resultado1 = document.getElementById("resultado1")
    resultado1.innerText = arrendodamento1 + " - Arrendodamento pra baixo!"
    let resultado2 = document.getElementById("resultado2")
    resultado2.innerText = arrendodamento2 + " - Arrendodamento pra cima!"
}

// Ex2:
function ex2(){
    let nome = (document.getElementById("nome").value)
    let maiscula = (nome.toUpperCase())
    let minuscula = (nome.toLowerCase())

    let resultado3 = document.getElementById("resultado3")
    resultado3.innerText = maiscula + " - Em maiscúla"
    let resultado4 = document.getElementById("resultado4")
    resultado4.innerText = minuscula + " - Em minúsculo"
}

// Ex3:
function ex3(){
    let aleatorio = parseInt(Math.random()*100)
    let resultado5 = document.getElementById("resultado5")
    resultado5.innerText = aleatorio + " - Número gerado!"
}

// Ex4:
function ex4(){
    let decimal = (document.getElementById("decimal").value)
    let numerodecasas = (Number(decimal).toFixed(2))
    let resultado6 = document.getElementById("resultado6")
    resultado6.innerText = numerodecasas + " - Número de casas decimais = 2"

}

// Ex5:
function ex5(){
    let resultado7 = document.getElementById("resultado7")
    let frase = document.getElementById("frase").value
    let palavra1 = document.getElementById("palavra1").value
    let palavra2 = document.getElementById("palavra2").value
    resultado7.innerText = (frase.replace(palavra1, palavra2))
}

// Ex6:
function ex6(){
    let resultado8 = document.getElementById("resultado8")
    let valor = document.getElementById("valor").value
    if (isNaN(valor)){
        resultado8.innerText = "O valor não é um número"
    }else{
        resultado8.innerText = "O valor é um número."
    }
}

// Ex7:
function ex7(){
    let mudarpalavra = document.getElementById("mudarpalavra").value
    let numeropalavra = document.getElementById("numeropalavra").value
    let posicaopalavra = mudarpalavra.charAt(numeropalavra -1)
    let resultado9 = document.getElementById("resultado9")
    resultado9.innerText = posicaopalavra + " - Posição da palavra de acordo com o número " + numeropalavra
}

// Ex8:
function ex8(){
    let nome1 = document.getElementById("nome1").value
    let sobrenome = document.getElementById("sobrenome").value

    let resultado10 = document.getElementById("resultado10")
    resultado10.innerText = "Nome Completo: " + nome1 + " " + sobrenome  
}

// Ex9:
function ex9(){
    let numero1 = parseInt(document.getElementById("numero1").value)
    let numero2 = parseInt(document.getElementById("numero2").value)
    let somar = numero1 + numero2
    let resultado11 = document.getElementById("resultado11")
    resultado11.innerText = "Soma: " + somar
}

// Ex10:
function ex10(){
    let idade = document.getElementById("idade").value
    let resultado12 = document.getElementById("resultado12")
    if (idade >= 18){
        resultado12.innerText = "Você pode dirigir."
    }else{
        resultado12.innerText = "Você não pode dirigir."
    }
}
