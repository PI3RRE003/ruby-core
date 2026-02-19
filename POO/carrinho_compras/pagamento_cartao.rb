require_relative 'registro'
class PagamentoCartao 
  include Registro
    def pagar(valor)
      log("Pagando R$:#{valor} no Cartão")
    end
end