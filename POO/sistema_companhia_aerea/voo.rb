class Voo
  attr_reader :numero, :destino, :capacidade_maxima, :status
  def initialize(numero,destino,capacidade_maxima)
    @numero = numero
    @destino = destino
    @capacidade_maxima = capacidade_maxima
    @status = "agendado"
  end

  def iniciar_embarque
    @status = "embarcando"
  end
end