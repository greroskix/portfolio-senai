 // Função para abrir modal
 function abrirModal(idModal, evento) {
    evento.preventDefault();
    document.getElementById('modal-' + idModal).classList.add('ativa');
    document.body.style.overflow = 'hidden';
}

// Função para fechar modal
function fecharModal(idModal) {
    document.getElementById('modal-' + idModal).classList.remove('ativa');
    document.body.style.overflow = 'auto';
}

// Função para rolar até a seção sobre
function rolarParaSobre(evento) {
    evento.preventDefault();
    document.getElementById('sobre').scrollIntoView({ behavior: 'smooth' });
}


// Fechar modal ao clicar fora
window.onclick = function(evento) {
    if (evento.target.classList.contains('janela-modal')) {
        evento.target.classList.remove('ativa');
        document.body.style.overflow = 'auto';
    }
}

// Fechar modal com a tecla ESC
document.addEventListener('keydown', function(evento) {
    if (evento.key === 'Escape') {
        document.querySelectorAll('.janela-modal').forEach(modal => {
            modal.classList.remove('ativa');
        });
        document.body.style.overflow = 'auto';
    }
});