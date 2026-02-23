class Produto
  attr_reader :nome, :preco, :quantidade_estoque
  def initialize(nome, preco, quantidade_estoque)
    @nome = nome
    @preco = preco
    @quantidade_estoque = quantidade_estoque
  end

  def reduzir_estoque
    @quantidade_estoque -= 1
  end
end