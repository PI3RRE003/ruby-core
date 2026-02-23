class Reserva
  attr_reader :hospede, :quarto, :quantidade_dias
  def initialize(hospede, quarto, quantidade_dias)
    @hospede = hospede
    @quarto = quarto
    @quantidade_dias = quantidade_dias
  end

  def calcular_total
    @quantidade_dias * @quarto.valor_diaria
  end
end