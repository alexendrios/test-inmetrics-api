Quando('efetua a alteração dos Dados através da Api') do  
    @operacao = OperacaoWebService.new
    @response = @operacao.put_alterar_usuario @id
end

 





