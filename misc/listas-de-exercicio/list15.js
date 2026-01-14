// Ex1:

function ex1(){
    let ex1 = document.getElementById("ex1")
    if(ex1.style.display == "none"){
        ex1.style.display = "block"
    }else {
        ex1.style.display = "none"
    }
}

// Ex2:

function ex2() {
    if (document.body.style.backgroundColor == "rgb(27, 30, 35)") {
        document.body.style.backgroundColor = "#ffffff"
    } else {
        document.body.style.backgroundColor = "rgb(27, 30, 35)"
    }

    if (document.body.style.backgroundColor == "rgb(27, 30, 35)"){
        document.body.text = "#ffffff"
    } else {
        document.body.text = "#000000"
    }
}

// Ex3:

function trocartexto() {
    let mensagem = document.getElementById("ex3");
    mensagem.innerText = "Meu nome é André Greroski, tenho 17 anos, moro em Suzano, estudo no Senai e faço o curso de ADS.";
}

// Ex4:

function colorir() {
    let ex4 = document.getElementById("receba"); 
    if (ex4.style.color === "green") {
        ex4.style.color = "yellow";
    } else if (ex4.style.color === "yellow") {
        ex4.style.color = "blue";
    } else {
        ex4.style.color = "green";
    }
}

// Ex5:

function ex5(){
    alert("Pare de clicar no Botão!")
}

// Ex6:

function porta1() {
    alert("Você ganhou um carro!")
    let imagem = document.getElementById("imagem")
    imagem.src = "img/carro.png"
    imagem.style.display = "block"
}

function porta2() {
    alert("Você não ganhou nada!")
    let imagem = document.getElementById("imagem")
    imagem.src = "img/caixa-vazia.png"
    imagem.style.display = "block"

}

function porta3() {
    alert("Parabéns, você encontrou o tesouro!")
    let imagem = document.getElementById("imagem")
    imagem.src = "img/tesouro.png"
    imagem.style.display = "block"
}

// Ex7:

function redimensionar(){
    let imagem1 = document.getElementById("imagem1");
    let novoTamanho = Math.floor(Math.random() * (300 - 20 + 1)) + 20;
    imagem1.style.width = novoTamanho + "px";
}

// Ex8:

let cliques = 0;

function semafaro() {
    cliques++;
    document.getElementById("semafaro1").style.backgroundColor = "black";
    document.getElementById("semafaro2").style.backgroundColor = "black";
    document.getElementById("semafaro3").style.backgroundColor = "black";
    if (cliques === 1) {
        document.getElementById("semafaro1").style.backgroundColor = "red";
        alert("PARE");
    } else if (cliques === 2) {
        document.getElementById("semafaro2").style.backgroundColor = "yellow";
        alert("ATENÇÃO!");
    } else if (cliques === 3) {
        document.getElementById("semafaro3").style.backgroundColor = "green";
        alert("PODE IR!");
        cliques = 0;
    }
}

// Ex9:

function trocaimagem() {
    let filme1 = document.getElementById("filme1");
    filme1.src = "img/superbad.png";
}

function destrocaimagem() {
    let filme1 = document.getElementById("filme1");
    filme1.src = "img/filme-comedia.png";
}

function trocaimagem2() {
    let filme1 = document.getElementById("filme2");
    filme1.src = "img/batman.png";
}

function destrocaimagem2() {
    let filme1 = document.getElementById("filme2");
    filme1.src = "img/filme-acao.png";
}

function trocaimagem3() {
    let filme1 = document.getElementById("filme3");
    filme1.src = "img/yourname.png";
}

function destrocaimagem3() {
    let filme1 = document.getElementById("filme3");
    filme1.src = "img/filme-romance.png";
}
