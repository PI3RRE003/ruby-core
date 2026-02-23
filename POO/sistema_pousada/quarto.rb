class Quarto
  attr_reader :numero, :valor_diaria, :status
  def initialize(numero, valor_diaria)
    @numero = numero
    @valor_diaria = valor_diaria
    @status = "disponivel"
  end

  def ocupar_quarto
    @status = "ocupado"
    puts "Ocupando quarto #{@numero}"
  end

  def liberar_quarto
    @status = "disponivel"
    puts "Desocupando quarto #{@numero}"
  end
end