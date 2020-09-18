Quando('informado seu CPF {string},') do |cpf|
    @json = Utils.new 

    #descobrindo id usuário
    valores = [@response.body.to_s, 'cpf', cpf, 'empregadoId']
    @id = @json.iteragindo_json valores 

    #descobrindo nome usuário
    valores = [@response.body.to_s, 'cpf', cpf, 'nome']
    @nome_usuario = @json.iteragindo_json valores   
    @operacao = OperacaoWebService.new 
end
  
Quando('efetuar a busca pelo ID via API') do
    @response = @operacao.get_listar_usuario @id
end
  
Entao('será vizalizado o nome do usuário  {string}') do |usuario|
    expect(@nome_usuario).to eq  usuario
end