#language: pt

@listar_usuarios
Funcionalidade: Listar Usuários 
Como um usuário do Sistema
Eu quero realizar as requisições via API
Afim de manipuçar as requisições para Listar todos os usuários cadastrados

Cenário: Listar todos os Usuários através da API
    Dado que eu faça um GET no endpoint empregados
    Entao a operação retonará o código 200
