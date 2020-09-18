Dado('realizar uma POST para cadastrar um usuário') do
    @operacao = OperacaoWebService.new
    @response = @operacao.post_cadastrar_usuario
end
  
Entao('a operação retonará o código {int}') do |response|
    expect(@response.code).to eq  response
end