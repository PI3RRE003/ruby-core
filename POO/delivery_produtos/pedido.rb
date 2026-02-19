class Produto
    attr_reader :nome, :preco
    def initialize(nome, preco)
      @nome = nome
      @preco = preco
    end
end

class Pedido
  attr_reader :produtos
  def initialize
    @produtos = []
  end 

  def adicionar_produto(produto)
    @produtos << produto
    puts "Adicionado:#{produto.nome}"
  end

  def calcular_total
    total = 0
    @produtos.each do |produto|
      total += produto.preco
      puts "Produto:#{produto.nome} - Preço R$:#{produto.preco}"
    end
    puts "Valor Total dos Produtos R$:#{total}"
  end
end

# Teste
hamburguer = Produto.new("X-Bacon", 25.0)
refri = Produto.new("Coca-Cola", 8.0)

meu_pedido = Pedido.new
meu_pedido.adicionar_produto(hamburguer)
meu_pedido.adicionar_produto(refri)

meu_pedido.calcular_total # Deve dar 33.0