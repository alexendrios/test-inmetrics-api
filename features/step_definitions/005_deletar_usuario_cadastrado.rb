Quando('efetuar a exclusão dos Dados através da Api') do                      
    @operacao = OperacaoWebService.new
    @response = @operacao.delete_usuario @id
end                                                                           