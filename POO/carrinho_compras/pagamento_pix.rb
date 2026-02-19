require_relative 'registro'
class PagamentoPix 
  include Registro
    def pagar(valor)
      if valor >= 100
        total_com_desconto = valor - (valor * 0.1)
        log("Total R$:#{total_com_desconto} | Pagamento via Pix Desconto de 10%")
      end
      log("Total:#{valor} | Pagamento via Pix")
    end
end