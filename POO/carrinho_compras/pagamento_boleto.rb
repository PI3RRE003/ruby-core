require_relative 'registro'

class PagamentoBoleto 
    include Registro
    def pagar(valor)
      log("Gerando Boleto de R$:#{valor}")
    end
end