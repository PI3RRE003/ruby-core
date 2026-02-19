require_relative 'produto'
require_relative 'pagamento_pix'
require_relative 'pagamento_cartao'
require_relative 'pagamento_boleto'


class Carrinho
    attr_reader :produtos
    def initialize(produtos=[])
      @produtos = produtos            
    end        

    def mostrar_produtos
      puts "===== ITENS NO CARRINHO ====="
      @produtos.each { |produto| puts "Item:#{produto.nome} - Preço R$:#{produto.preco}" }
    end

    def calcular_total
      total = @produtos.sum{|produto| produto.preco}
      return total
    end

    def finalizar_compra(metodo_pagamento)
      valor_total = calcular_total

      metodo_pagamento.pagar(valor_total)
    end
end


agua = Produto.new("Agua",2)
carrinho =  Carrinho.new([agua])
carrinho.mostrar_produtos

pix = PagamentoPix.new
boleto = PagamentoBoleto.new


carrinho.finalizar_compra(pix)