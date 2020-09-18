#language: pt

@alterar_usuario
Funcionalidade: Alterar um usuário
Como um usuário do Sistema
Eu quero realizar as requisições via API
Afim de manipuçar as requisições para alterar um usuário cadastrado

Cenário: Alterar os dados de um usuário cadastrado através da API
    Dado que eu faça um GET no endpoint empregados
    Quando informado seu CPF '002.003.055-00',
    E efetuar a busca pelo ID via API
    E efetua a alteração dos Dados através da Api
    Entao a operação retonará o código 202