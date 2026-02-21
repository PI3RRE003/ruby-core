class Mesa
  attr_reader :numero, :status, :pedidos
  def initialize(numero)
    @numero = numero
    @status = false
    @pedidos = []
  end

  def ocupar!
    @status = true
    puts "Ocupando Mesa:#{@numero}"
  end

  def desocupar!
    @status = false
    @pedidos.clear
    puts "Desocupando Mesa:#{@numero}"
  end

  def fazer_pedido(item)
    if @status == true
      @pedidos << item
      puts"Item:#{item.nome} adicionado ao pedido"
    else
      puts "A Mesa:#{@numero} está livre ocupe-a primeiro"
    end
    
  end

  def fechar_conta
    total_mesa = @pedidos.sum{ |item| item.preco}
    taxa_servico =  0.10
    valor_final = total_mesa + (total_mesa * taxa_servico)
    puts "Mesa:#{@numero} - Total da Mesa R$:#{total_mesa} - Taxa de Serviço 10% - Valor final R$:#{valor_final}"
    desocupar!
  end
end