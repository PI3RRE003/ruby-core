class MaquinaDeVendas
  def initialize
    @produtos = []
    @saldo_inserido = 0.0
  end

  def adicionar_produto(produto)
    @produtos << produto
    puts "Produto adicionado: #{produto.nome} "
  end

  def inserir_valor(valor)
    @saldo_inserido += valor
    puts "Você possui R$:#{@saldo_inserido} de creditos"
  end

  def zerar_saldo_inserido
    @saldo_inserido = 0
  end

  def comprar(nome_do_produto)
    produto = @produtos.find { |produto| produto.nome == nome_do_produto}
    if !produto
      puts"Produto #{nome_do_produto} não existe na maquina"
    elsif produto.quantidade_estoque <= 0
      puts"Produto#{produto.nome} sem estoque"
    elsif @saldo_inserido < produto.preco
      puts "Valor insuficiente, Falta R$:#{produto.preco - @saldo_inserido}"
    else
      puts "Produto:#{produto.nome} -  Preço R$:#{produto.preco} -  Estoque:#{produto.quantidade_estoque}"
      puts "Troco R$:#{@saldo_inserido - produto.preco}"
      produto.reduzir_estoque
      zerar_saldo_inserido
    end
  end
end