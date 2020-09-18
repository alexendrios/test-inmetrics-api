require 'json'
class Utils
    def iteragindo_json param
=begin 
        Método Responsável para tratar o objeto json
        exigem os seguintes parâmetos
        param[0] => Irá receber o objeto json
        param[1] => objeto responsável pela busca da chave do Hash
        param[2] => objeto para comparação com a chave
        param[3] => Objeto de Retono Desejado
=end    
        result = JSON.parse(param[0])
        result.each do |pesquisa|
            if pesquisa[param[1]].eql? param[2]
                $retorno = pesquisa[param[3]]
            end
        end 
        $retorno.to_s    
    end

    def usuario_cadastro
        
        body = {
            "admissao": "10/09/2020",
            "cargo": "Analista de TI",
            "comissao": "3.500,00",
            "cpf": "002.003.055-00",
            "departamentoId": 10,
            "nome": "Germano Ricardo",
            "salario": "17.500,00",
            "sexo": "m",
            "tipoContratacao": "pj"
        }.to_json

        headers = {
            "Accept": '*/*',
            "Content-Type": 'application/json'
        }

        param = [body, headers]
        param
    end

    def usuario_alterar param
        body = {
            "empregadoId": param.to_i,
            "admissao": "10/09/2020",
            "cargo": "Analista de TI",
            "comissao": "3.500,00",
            "cpf": "002.003.055-00",
            "departamentoId": 10,
            "nome": "Germano Ricardo dos Santos",
            "salario": "17.500,00",
            "sexo": "m",
            "tipoContratacao": "clt"
        }.to_json
    
        headers = {
            "Accept": '*/*',
            "Content-Type": 'application/json'
        }

        param = [body, headers]
        param
    end
end

