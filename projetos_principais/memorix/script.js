AOS.init();

const cores = ['green', 'red', 'yellow', 'blue'];
let jogoSequencia = [];
let jogadorSequencia = [];
let nivel = 0;
let turnoDoJogador = false;

const sons = {
  green: new Audio('audios/som_receba.mp3'),
  red: new Audio('audios/som_receba.mp3'),
  yellow: new Audio('audios/som_receba.mp3'),
  blue: new Audio('audios/som_receba.mp3'),
};

const botaoIniciar = document.getElementById('botaoIniciar');
const contagemNivel = document.getElementById('nivel');

botaoIniciar.addEventListener('click', inicioJogo);

cores.forEach(cor => {
  document.getElementById(cor).addEventListener('click', () => cliqueJogador(cor));
});

function inicioJogo() {
  jogoSequencia = [];
  jogadorSequencia = [];
  nivel = 0;
  proximoNivel();
}

function proximoNivel() {
  nivel++;
  contagemNivel.textContent = `Nível: ${nivel}`;
  jogadorSequencia = [];
  const proximaCor = cores[Math.floor(Math.random() * cores.length)];
  jogoSequencia.push(proximaCor);
  turnoDoJogador = false;
  mostrarSequencia();
}

function mostrarSequencia() {
  let i = 0;
  let intervaloTempo = nivel > 5 ? 400 : 600;

  const intervalo = setInterval(() => {
    const cor = jogoSequencia[i];
    flashColor(cor);
    i++;
    if (i >= jogoSequencia.length) {
      clearInterval(intervalo);
      turnoDoJogador = true;
    }
  }, intervaloTempo);
}

function flashColor(cor) {
  const el = document.getElementById(cor);
  el.style.opacity = 1;
   el.style.transform = 'translateY(-8px)'; 
   sons[cor].currentTime = 0; 
    sons[cor].play(); 
  setTimeout(() => {
    el.style.transform = 'translateY(0)'; 
    el.style.opacity = 0.6;
  }, 300);  
}

function cliqueJogador(cor) {
  if (!turnoDoJogador) return;

  flashColor(cor);
  jogadorSequencia.push(cor);

  const indiceAtual = jogadorSequencia.length - 1;
  if (jogadorSequencia[indiceAtual] !== jogoSequencia[indiceAtual]) {
    alert('Você errou! Fim de jogo.');
    inicioJogo();
    return;
  }

  if (jogadorSequencia.length === jogoSequencia.length) {
    turnoDoJogador = false;
    setTimeout(proximoNivel, 1000);
  }
}
