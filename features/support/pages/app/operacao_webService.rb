
class OperacaoWebService

  def initialize
      $uri_base = "https://inmetrics:automacao@inm-api-test.herokuapp.com"
      @utils = Utils.new
  end
    
   def post_cadastrar_usuario
        $uri_base += '/empregado/cadastrar'
        argumentos = @utils.usuario_cadastro
        requisicao = HTTParty.post($uri_base, body:  argumentos[0], headers: argumentos[1])
        requisicao
    end

    def get_listar_all_usuarios
        $uri_base += '/empregado/list_all'
        requisicao = HTTParty.get($uri_base)
        requisicao
    end

    def get_listar_usuario param
        $uri_base += "/empregado/list/#{param}"
        requisicao = HTTParty.get($uri_base)
        requisicao
    end

    def put_alterar_usuario param
        $uri_base += "/empregado/alterar/#{param}" 
        argumentos =  @utils.usuario_alterar param
        requisicao = HTTParty.put($uri_base, body: argumentos[0], headers: argumentos[1])
        requisicao
    end

    def delete_usuario param
        $uri_base += "/empregado/deletar/#{param}"
        requisicao = HTTParty.delete($uri_base)
        requisicao
    end
end






