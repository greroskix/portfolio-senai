let jogadorEscolha = 0
let jogadorPontos = 0
let computadorPontos = 0
let ganhador = -1

function jogar(escolha){
    jogadorEscolha = escolha
    let computadorEscolha = Math.floor(Math.random() * 3) + 1
    // Gera um número aleatório entre 1 e 3

    // 1 = Pedra        0 = Empate
    // 2 = Papel        1 = Jogador Ganhou
    // 3 = Tesoura      2 = Computador Ganhou

    if(jogadorEscolha == 1 && computadorEscolha == 1){
        ganhador = 0
    }else if(jogadorEscolha == 1 && computadorEscolha == 2){
        ganhador = 2
    }else if (jogadorEscolha == 1 && computadorEscolha == 3){
        ganhador = 1
    }else if (jogadorEscolha == 2 && computadorEscolha == 1){
        ganhador = 1
    }else if (jogadorEscolha == 2 && computadorEscolha == 2){
        ganhador = 0
    }else if (jogadorEscolha == 2 && computadorEscolha == 3){
        ganhador = 2
    }else if (jogadorEscolha == 3 && computadorEscolha == 1){
        ganhador = 2
    }else if (jogadorEscolha == 3 && computadorEscolha == 2){
        ganhador = 1
    }else if (jogadorEscolha == 3 && computadorEscolha == 3){
        ganhador = 0
    }

    let jogadorEscolha1 = document.getElementById("jogadorEscolha1")
    let jogadorEscolha2 = document.getElementById("jogadorEscolha2")
    let jogadorEscolha3 = document.getElementById("jogadorEscolha3")
    let computadorEscolha1 = document.getElementById("computadorEscolha1")
    let computadorEscolha2 = document.getElementById("computadorEscolha2")
    let computadorEscolha3 = document.getElementById("computadorEscolha3")

    jogadorEscolha1.classList.remove('selecionado')
    jogadorEscolha2.classList.remove('selecionado')
    jogadorEscolha3.classList.remove('selecionado')
    computadorEscolha1.classList.remove('selecionado')
    computadorEscolha2.classList.remove('selecionado')
    computadorEscolha3.classList.remove('selecionado')

    document.getElementById("jogadorEscolha" + jogadorEscolha).classList.add('selecionado')
    document.getElementById("computadorEscolha" + computadorEscolha).classList.add('selecionado')

    let mensagem = document.getElementById("mensagem")
    if(ganhador == 0){
        mensagem.innerText = "EMPATE"
    }else if(ganhador == 1){
        mensagem.innerText = "JOGADOR GANHOU"
        jogadorPontos++
    }else if (ganhador == 2){
        mensagem.innerText = "COMPUTADOR GANHOU"
        computadorPontos++
    }

    let pontosJ = document.getElementById("jogadorPontos")
    let pontosC = document.getElementById("computadorPontos")
    pontosJ.innerText = jogadorPontos
    pontosC.innerText = computadorPontos
}
