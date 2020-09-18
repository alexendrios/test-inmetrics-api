#language: pt

@cadastro_usuario
Funcionalidade: Cadastrar um usuário
Como um usuário do Sistema
Eu quero realizar as requisições via API
Afim de manipuçar as requisições para cadastrar usuário

Cenário: Cadastrar um usuário através da API
    Dado realizar uma POST para cadastrar um usuário
    Entao a operação retonará o código 202
