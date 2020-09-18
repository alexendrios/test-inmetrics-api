#language: pt

@listar_usuario
Funcionalidade: Listar um usuário
Como um usuário do Sistema
Eu quero realizar as requisições via API
Afim de manipuçar as requisições para listar um usuário cadastrado

Cenário: Listar um usuário cadastrado através da API
    Dado que eu faça um GET no endpoint empregados
    Quando informado seu CPF '002.003.055-00',
    Entao a operação retonará o código 200
    E será vizalizado o nome do usuário  "Germano Ricardo"