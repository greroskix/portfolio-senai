let produtosCadastrados = [];
let usuarioLogado = null;
let termoBuscaAtual = '';

document.addEventListener('DOMContentLoaded', function() {
    inicializarSistema();
});

let movimentacoesEstoque = [];

function inicializarSistema() {
    carregarDadosDoLocalStorage();
    
    const caminhoAtual = window.location.pathname;
    const nomeArquivo = caminhoAtual.split('/').pop();
    
    if (nomeArquivo === 'index.html' || nomeArquivo === '') {
        configurarLogin();
    } else if (nomeArquivo === 'main.html') {
        configurarInterfacePrincipal();
    } else if (nomeArquivo === 'cadastro_produto.html') {
        configurarCadastroProduto();
    } else if (nomeArquivo === 'gestao_estoque.html') {
        configurarGestaoEstoque();
    }
}

function carregarDadosDoLocalStorage() {
    const produtosSalvos = localStorage.getItem('produtosEstoque');
    if (produtosSalvos) {
        produtosCadastrados = JSON.parse(produtosSalvos);
    }
    
    const usuarioSalvo = localStorage.getItem('usuarioLogado');
    if (usuarioSalvo) {
        usuarioLogado = JSON.parse(usuarioSalvo);
    }
    
    const movimentacoesSalvas = localStorage.getItem('movimentacoesEstoque');
    if (movimentacoesSalvas) {
        movimentacoesEstoque = JSON.parse(movimentacoesSalvas);
    }
}

function salvarProdutosNoLocalStorage() {
    localStorage.setItem('produtosEstoque', JSON.stringify(produtosCadastrados));
}

function salvarUsuarioNoLocalStorage() {
    if (usuarioLogado) {
        localStorage.setItem('usuarioLogado', JSON.stringify(usuarioLogado));
    } else {
        localStorage.removeItem('usuarioLogado');
    }
}

function configurarLogin() {
    const formularioLogin = document.getElementById('formLogin');
    if (formularioLogin) {
        formularioLogin.addEventListener('submit', function(evento) {
            evento.preventDefault();
            realizarLogin();
        });
    }
    
    if (usuarioLogado) {
        window.location.href = 'main.html';
    }
}

function realizarLogin() {
    const campoUsuario = document.getElementById('usuario');
    const campoSenha = document.getElementById('senha');
    const mensagemErro = document.getElementById('mensagemErro');
    
    const nomeUsuario = campoUsuario.value.trim();
    const senhaUsuario = campoSenha.value.trim();
    
    if (nomeUsuario === '' || senhaUsuario === '') {
        mostrarMensagemErro('Por favor, preencha todos os campos.');
        return;
    }
    
    if (senhaUsuario.length < 6) {
        mostrarMensagemErro('A senha deve ter pelo menos 6 caracteres.');
        return;
    }
    
    let usuariosCadastrados = [];
    const usuariosSalvos = localStorage.getItem('usuariosCadastrados');
    if (usuariosSalvos) {
        usuariosCadastrados = JSON.parse(usuariosSalvos);
    }
    
    const usuarioEncontrado = usuariosCadastrados.find(function(u) {
        return u.usuario === nomeUsuario;
    });
    
    if (!usuarioEncontrado) {
        mostrarMensagemErro('Usuário não encontrado. Verifique o nome de usuário e tente novamente.');
        return;
    }
    
    if (usuarioEncontrado.senha !== senhaUsuario) {
        mostrarMensagemErro('Senha incorreta. Tente novamente.');
        return;
    }
    
    usuarioLogado = {
        nome: usuarioEncontrado.nome,
        usuario: usuarioEncontrado.usuario,
        dataLogin: new Date().toISOString()
    };
    
    salvarUsuarioNoLocalStorage();
    
    window.location.href = 'main.html';
}

function mostrarMensagemErro(mensagem) {
    const mensagemErro = document.getElementById('mensagemErro');
    if (mensagemErro) {
        mensagemErro.textContent = mensagem;
        mensagemErro.style.display = 'block';
        
        setTimeout(function() {
            mensagemErro.style.display = 'none';
        }, 5000);
    }
}

function configurarInterfacePrincipal() {
    if (!usuarioLogado) {
        window.location.href = 'index.html';
        return;
    }
    
    const elementoNomeUsuario = document.getElementById('nomeUsuario');
    if (elementoNomeUsuario && usuarioLogado) {
        elementoNomeUsuario.textContent = usuarioLogado.nome;
    }
    
    const botaoLogout = document.getElementById('btnLogout');
    if (botaoLogout) {
        botaoLogout.addEventListener('click', function() {
            realizarLogout();
        });
    }
}

function realizarLogout() {
    if (confirm('Deseja realmente sair do sistema?')) {
        usuarioLogado = null;
        salvarUsuarioNoLocalStorage();
        window.location.href = 'index.html';
    }
}

function irParaCadastroProduto() {
    window.location.href = 'cadastro_produto.html';
}

function irParaGestaoEstoque() {
    window.location.href = 'gestao_estoque.html';
}

function voltarParaPrincipal() {
    window.location.href = 'main.html';
}

function configurarCadastroProduto() {
    if (!usuarioLogado) {
        window.location.href = 'index.html';
        return;
    }
    
    const formularioProduto = document.getElementById('formProduto');
    if (formularioProduto) {
        formularioProduto.addEventListener('submit', function(evento) {
            evento.preventDefault();
            salvarProduto();
        });
    }
    
    const botaoBuscar = document.getElementById('btnBuscar');
    if (botaoBuscar) {
        botaoBuscar.addEventListener('click', function() {
            realizarBusca();
        });
    }
    
    const campoBusca = document.getElementById('campoBusca');
    if (campoBusca) {
        campoBusca.addEventListener('keypress', function(evento) {
            if (evento.key === 'Enter') {
                realizarBusca();
            }
        });
    }
    
    const botaoLimparBusca = document.getElementById('btnLimparBusca');
    if (botaoLimparBusca) {
        botaoLimparBusca.addEventListener('click', function() {
            limparBusca();
        });
    }
    
    carregarProdutosNaTabela();
}

function salvarProduto() {
    limparMensagensValidacao();
    
    const dadosProduto = coletarDadosDoFormulario();
    
    const validacao = validarDadosProduto(dadosProduto);
    if (!validacao.valido) {
        mostrarMensagensValidacao(validacao.erros, 'erro');
        return;
    }
    
    const produtoId = document.getElementById('produtoId').value;
    
    if (produtoId) {
        editarProdutoExistente(produtoId, dadosProduto);
    } else {
        criarNovoProduto(dadosProduto);
    }
    
    salvarProdutosNoLocalStorage();
    
    carregarProdutosNaTabela();
    
    limparFormulario();
    
    mostrarMensagensValidacao(['Produto salvo com sucesso!'], 'sucesso');
}

function coletarDadosDoFormulario() {
    return {
        nome: document.getElementById('nomeProduto').value.trim(),
        categoria: document.getElementById('categoriaProduto').value,
        quantidade: parseFloat(document.getElementById('quantidadeProduto').value) || 0,
        estoqueMinimo: parseFloat(document.getElementById('estoqueMinimo').value) || 0,
        unidadeMedida: document.getElementById('unidadeMedida').value,
        dataValidade: document.getElementById('dataValidade').value,
        cor: document.getElementById('corProduto').value.trim(),
        descricao: document.getElementById('descricaoProduto').value.trim()
    };
}

function validarDadosProduto(dados) {
    const erros = [];
    
    if (!dados.nome || dados.nome.length < 2) {
        erros.push('O nome do produto deve ter pelo menos 2 caracteres.');
    }
    
    if (!dados.categoria) {
        erros.push('A categoria do produto é obrigatória.');
    }
    
    if (dados.quantidade === null || dados.quantidade < 0) {
        erros.push('A quantidade deve ser um número maior ou igual a zero.');
    }
    
    if (!dados.unidadeMedida) {
        erros.push('A unidade de medida é obrigatória.');
    }
    
    if (dados.estoqueMinimo === null || dados.estoqueMinimo < 0) {
        erros.push('O estoque mínimo deve ser um número maior ou igual a zero.');
    }
    
    if (dados.dataValidade) {
        const dataValidade = new Date(dados.dataValidade);
        const hoje = new Date();
        hoje.setHours(0, 0, 0, 0);
        
        if (dataValidade < hoje) {
            erros.push('A data de validade não pode ser anterior à data atual.');
        }
    }
    
    return {
        valido: erros.length === 0,
        erros: erros
    };
}

function criarNovoProduto(dados) {
    const novoProduto = {
        id: gerarIdUnico(),
        nome: dados.nome,
        categoria: dados.categoria,
        quantidade: dados.quantidade,
        estoqueMinimo: dados.estoqueMinimo,
        unidadeMedida: dados.unidadeMedida,
        dataValidade: dados.dataValidade || null,
        cor: dados.cor || null,
        descricao: dados.descricao || null,
        dataCadastro: new Date().toISOString()
    };
    
    produtosCadastrados.push(novoProduto);
}

function editarProdutoExistente(id, dados) {
    const indice = produtosCadastrados.findIndex(function(produto) {
        return produto.id === id;
    });
    
    if (indice !== -1) {
        produtosCadastrados[indice].nome = dados.nome;
        produtosCadastrados[indice].categoria = dados.categoria;
        produtosCadastrados[indice].quantidade = dados.quantidade;
        produtosCadastrados[indice].estoqueMinimo = dados.estoqueMinimo;
        produtosCadastrados[indice].unidadeMedida = dados.unidadeMedida;
        produtosCadastrados[indice].dataValidade = dados.dataValidade || null;
        produtosCadastrados[indice].cor = dados.cor || null;
        produtosCadastrados[indice].descricao = dados.descricao || null;
    }
}

function gerarIdUnico() {
    return Date.now().toString(36) + Math.random().toString(36).substr(2);
}

function carregarProdutosNaTabela() {
    const corpoTabela = document.getElementById('corpoTabela');
    if (!corpoTabela) return;
    
    corpoTabela.innerHTML = '';
    
    let produtosParaExibir = produtosCadastrados;
    if (termoBuscaAtual) {
        produtosParaExibir = produtosCadastrados.filter(function(produto) {
            const nomeProduto = produto.nome.toLowerCase();
            const termoBusca = termoBuscaAtual.toLowerCase();
            return nomeProduto.includes(termoBusca);
        });
    }
    
    if (produtosParaExibir.length === 0) {
        const linhaVazia = document.createElement('tr');
        linhaVazia.innerHTML = '<td colspan="7" style="text-align: center; padding: 20px; color: #999;">Nenhum produto encontrado.</td>';
        corpoTabela.appendChild(linhaVazia);
        return;
    }
    
    produtosParaExibir.forEach(function(produto) {
        const linha = criarLinhaTabela(produto);
        corpoTabela.appendChild(linha);
    });
}

function criarLinhaTabela(produto) {
    const linha = document.createElement('tr');
    
    let dataValidadeFormatada = '-';
    if (produto.dataValidade) {
        const data = new Date(produto.dataValidade);
        dataValidadeFormatada = data.toLocaleDateString('pt-BR');
    }
    
    const categoriaFormatada = formatarCategoria(produto.categoria);
    
    const estoqueMinimo = produto.estoqueMinimo || 0;
    linha.innerHTML = `
        <td>${produto.nome}</td>
        <td>${categoriaFormatada}</td>
        <td>${produto.quantidade}</td>
        <td>${estoqueMinimo}</td>
        <td>${produto.unidadeMedida}</td>
        <td>${dataValidadeFormatada}</td>
        <td>
            <button class="btn-acao btn-editar" onclick="editarProduto('${produto.id}')">Editar</button>
            <button class="btn-acao btn-excluir" onclick="excluirProduto('${produto.id}')">Excluir</button>
        </td>
    `;
    
    return linha;
}

function formatarCategoria(categoria) {
    const categorias = {
        'cimento': 'Cimento',
        'tinta': 'Tinta',
        'argamassa': 'Argamassa',
        'fundacao': 'Fundação',
        'acabamento': 'Acabamento',
        'estrutura': 'Estrutura',
        'outros': 'Outros'
    };
    
    return categorias[categoria] || categoria;
}

function editarProduto(id) {
    const produto = produtosCadastrados.find(function(p) {
        return p.id === id;
    });
    
    if (!produto) {
        alert('Produto não encontrado!');
        return;
    }
    
    document.getElementById('produtoId').value = produto.id;
    document.getElementById('nomeProduto').value = produto.nome;
    document.getElementById('categoriaProduto').value = produto.categoria;
    document.getElementById('quantidadeProduto').value = produto.quantidade;
    document.getElementById('estoqueMinimo').value = produto.estoqueMinimo || 0;
    document.getElementById('unidadeMedida').value = produto.unidadeMedida;
    document.getElementById('dataValidade').value = produto.dataValidade || '';
    document.getElementById('corProduto').value = produto.cor || '';
    document.getElementById('descricaoProduto').value = produto.descricao || '';
    
    document.getElementById('tituloFormulario').textContent = 'Editar Produto';
    
    document.querySelector('.secao-formulario').scrollIntoView({ behavior: 'smooth' });
}

function excluirProduto(id) {
    const produto = produtosCadastrados.find(function(p) {
        return p.id === id;
    });
    
    if (!produto) {
        alert('Produto não encontrado!');
        return;
    }
    
    if (confirm(`Tem certeza que deseja excluir o produto "${produto.nome}"?`)) {
        produtosCadastrados = produtosCadastrados.filter(function(p) {
            return p.id !== id;
        });
        
        salvarProdutosNoLocalStorage();
        carregarProdutosNaTabela();
        
        mostrarMensagensValidacao(['Produto excluído com sucesso!'], 'sucesso');
    }
}

function limparFormulario() {
    document.getElementById('formProduto').reset();
    document.getElementById('produtoId').value = '';
    document.getElementById('tituloFormulario').textContent = 'Cadastrar Novo Produto';
    limparMensagensValidacao();
}

function realizarBusca() {
    const campoBusca = document.getElementById('campoBusca');
    if (campoBusca) {
        termoBuscaAtual = campoBusca.value.trim();
        carregarProdutosNaTabela();
    }
}

function limparBusca() {
    const campoBusca = document.getElementById('campoBusca');
    if (campoBusca) {
        campoBusca.value = '';
    }
    termoBuscaAtual = '';
    carregarProdutosNaTabela();
}

function mostrarMensagensValidacao(mensagens, tipo) {
    const containerMensagens = document.getElementById('mensagensValidacao');
    if (!containerMensagens) return;
    
    containerMensagens.innerHTML = '';
    
    mensagens.forEach(function(mensagem) {
        const divMensagem = document.createElement('div');
        divMensagem.className = 'mensagem-validacao ' + tipo;
        divMensagem.textContent = mensagem;
        containerMensagens.appendChild(divMensagem);
    });
    
    if (tipo === 'sucesso') {
        setTimeout(function() {
            limparMensagensValidacao();
        }, 5000);
    }
}

function limparMensagensValidacao() {
    const containerMensagens = document.getElementById('mensagensValidacao');
    if (containerMensagens) {
        containerMensagens.innerHTML = '';
    }
}

function configurarGestaoEstoque() {
    if (!usuarioLogado) {
        window.location.href = 'index.html';
        return;
    }
    
    const formularioMovimentacao = document.getElementById('formMovimentacao');
    if (formularioMovimentacao) {
        formularioMovimentacao.addEventListener('submit', function(evento) {
            evento.preventDefault();
            registrarMovimentacao();
        });
    }
    
    const campoData = document.getElementById('dataMovimentacao');
    if (campoData) {
        const hoje = new Date().toISOString().split('T')[0];
        campoData.value = hoje;
    }
    
    carregarProdutosNoSelect();
    carregarProdutosEstoqueOrdenados();
}

function ordenarProdutosAlfabeticamente(produtos) {
    return produtos.slice().sort(function(a, b) {
        const nomeA = a.nome.toUpperCase();
        const nomeB = b.nome.toUpperCase();
        if (nomeA < nomeB) {
            return -1;
        }
        if (nomeA > nomeB) {
            return 1;
        }
        return 0;
    });
}

function carregarProdutosNoSelect() {
    const selectProduto = document.getElementById('produtoSelecionado');
    if (!selectProduto) return;
    
    selectProduto.innerHTML = '<option value="">Selecione um produto...</option>';
    
    produtosCadastrados.forEach(function(produto) {
        const option = document.createElement('option');
        option.value = produto.id;
        option.textContent = produto.nome;
        selectProduto.appendChild(option);
    });
}

function carregarProdutosEstoqueOrdenados() {
    const corpoTabela = document.getElementById('corpoTabelaEstoque');
    if (!corpoTabela) return;
    
    corpoTabela.innerHTML = '';
    
    if (produtosCadastrados.length === 0) {
        const linhaVazia = document.createElement('tr');
        linhaVazia.innerHTML = '<td colspan="6" style="text-align: center; padding: 20px; color: #999;">Nenhum produto cadastrado.</td>';
        corpoTabela.appendChild(linhaVazia);
        return;
    }
    
    const produtosOrdenados = ordenarProdutosAlfabeticamente(produtosCadastrados);
    
    produtosOrdenados.forEach(function(produto) {
        const linha = criarLinhaTabelaEstoque(produto);
        corpoTabela.appendChild(linha);
    });
}

function criarLinhaTabelaEstoque(produto) {
    const linha = document.createElement('tr');
    const categoriaFormatada = formatarCategoria(produto.categoria);
    const estoqueMinimo = produto.estoqueMinimo || 0;
    const quantidadeAtual = produto.quantidade || 0;
    
    let status = '';
    let classeStatus = '';
    if (quantidadeAtual <= estoqueMinimo) {
        status = 'Estoque Baixo';
        classeStatus = 'status-baixo';
    } else {
        status = 'Normal';
        classeStatus = 'status-normal';
    }
    
    linha.innerHTML = `
        <td>${produto.nome}</td>
        <td>${categoriaFormatada}</td>
        <td>${quantidadeAtual}</td>
        <td>${estoqueMinimo}</td>
        <td>${produto.unidadeMedida}</td>
        <td><span class="${classeStatus}">${status}</span></td>
    `;
    
    return linha;
}

function registrarMovimentacao() {
    const produtoId = document.getElementById('produtoSelecionado').value;
    const tipoMovimentacao = document.getElementById('tipoMovimentacao').value;
    const quantidade = parseFloat(document.getElementById('quantidadeMovimentacao').value);
    const dataMovimentacao = document.getElementById('dataMovimentacao').value;
    const observacao = document.getElementById('observacaoMovimentacao').value.trim();
    
    if (!produtoId || !tipoMovimentacao || !quantidade || !dataMovimentacao) {
        mostrarMensagemMovimentacao('Por favor, preencha todos os campos obrigatórios.', 'erro');
        return;
    }
    
    if (quantidade <= 0) {
        mostrarMensagemMovimentacao('A quantidade deve ser maior que zero.', 'erro');
        return;
    }
    
    const produto = produtosCadastrados.find(function(p) {
        return p.id === produtoId;
    });
    
    if (!produto) {
        mostrarMensagemMovimentacao('Produto não encontrado.', 'erro');
        return;
    }
    
    if (tipoMovimentacao === 'SAIDA') {
        if (produto.quantidade < quantidade) {
            mostrarMensagemMovimentacao('Quantidade insuficiente em estoque. Quantidade disponível: ' + produto.quantidade, 'erro');
            return;
        }
        
        produto.quantidade -= quantidade;
        
        const estoqueMinimo = produto.estoqueMinimo || 0;
        if (produto.quantidade < estoqueMinimo) {
            alert('ATENÇÃO: Estoque abaixo do mínimo configurado!\n\nProduto: ' + produto.nome + '\nQuantidade atual: ' + produto.quantidade.toFixed(2) + '\nEstoque mínimo: ' + estoqueMinimo.toFixed(2));
        }
    } else if (tipoMovimentacao === 'ENTRADA') {
        produto.quantidade += quantidade;
    }
    
    const novaMovimentacao = {
        id: gerarIdUnico(),
        produtoId: produtoId,
        tipoMovimentacao: tipoMovimentacao,
        quantidade: quantidade,
        dataMovimentacao: dataMovimentacao,
        observacao: observacao,
        dataRegistro: new Date().toISOString()
    };
    
    movimentacoesEstoque.push(novaMovimentacao);
    localStorage.setItem('movimentacoesEstoque', JSON.stringify(movimentacoesEstoque));
    
    salvarProdutosNoLocalStorage();
    carregarProdutosEstoqueOrdenados();
    carregarProdutosNoSelect();
    limparFormularioMovimentacao();
    
    mostrarMensagemMovimentacao('Movimentação registrada com sucesso!', 'sucesso');
}

function mostrarMensagemMovimentacao(mensagem, tipo) {
    const containerMensagens = document.getElementById('mensagensMovimentacao');
    if (!containerMensagens) return;
    
    containerMensagens.innerHTML = '';
    
    const divMensagem = document.createElement('div');
    divMensagem.className = 'mensagem-validacao ' + tipo;
    divMensagem.textContent = mensagem;
    containerMensagens.appendChild(divMensagem);
    
    if (tipo === 'sucesso') {
        setTimeout(function() {
            containerMensagens.innerHTML = '';
        }, 5000);
    }
}

function limparFormularioMovimentacao() {
    document.getElementById('formMovimentacao').reset();
    const campoData = document.getElementById('dataMovimentacao');
    if (campoData) {
        const hoje = new Date().toISOString().split('T')[0];
        campoData.value = hoje;
    }
}

