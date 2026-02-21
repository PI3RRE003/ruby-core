class Estacionamento
  attr_reader :capacidade, :carros_estacionados
  def initialize(capacidade)
    @capacidade = capacidade
    @carros_estacionados = []
  end

  def estacionar(carro)
    if @carros_estacionados.length >= @capacidade
      puts "Estacionamento cheio. Retorne outra Hora"
      return
    end
    @carros_estacionados << carro
    puts "Carro:#{carro.placa} Estacionado !"
  end

  def retirar(placa_do_carro)
    carro_encontrado = @carros_estacionados.find { |carro| carro.placa == placa_do_carro }
    if carro_encontrado
      @carros_estacionados.delete(carro_encontrado)
      puts "Carro:#{placa_do_carro} liberado, carros restantes no estacionamento:#{@carros_estacionados.length}"
    else
      puts "Nenhum carro encontrado"
    end
  end
end