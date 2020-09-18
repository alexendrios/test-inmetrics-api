#language: pt

@excluir_usuario
Funcionalidade: Deletar um usuário
Como um usuário do Sistema
Eu quero realizar as requisições via API
Afim de manipuçar as requisições para deletar um usuário cadastrado

Cenário: Deletar um usuário cadastrado através da API
    Dado que eu faça um GET no endpoint empregados
    Quando informado seu CPF '002.003.055-00',
    E efetuar a busca pelo ID via API
    E efetuar a exclusão dos Dados através da Api
    Entao a operação retonará o código 202