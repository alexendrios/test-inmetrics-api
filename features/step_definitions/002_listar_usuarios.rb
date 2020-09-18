Dado('que eu faça um GET no endpoint empregados') do
    @operacao = OperacaoWebService.new
    @response = @operacao.get_listar_all_usuarios
end
