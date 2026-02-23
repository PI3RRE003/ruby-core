class Pousada
  attr_reader :nome, :quartos, :reservas_ativas
  def initialize(nome)
    @nome = nome
    @quartos = []
    @reservas_ativas = []
  end

  def cadastrar_quarto(quarto)
    @quartos << quarto
    puts "Adicionando Quarto:#{quarto.numero}"
  end

  def quartos_disponiveis
    quarto_disponivel = @quartos.select { |quarto| quarto.status == "disponivel" }
    quarto_disponivel.each { |quarto| puts "Quartos Disponiveis:#{quarto.numero}"  }  
  end

  def realizar_checkin(hospede, numero_quarto, dias)
    quarto_encontrado = @quartos.find { |quarto| quarto.numero == numero_quarto }
    if !quarto_encontrado
      puts "Quarto:#{quarto_encontrado.numero} não existe"
    elsif quarto_encontrado.status != "disponivel"
      puts "Quarto:#{quarto_encontrado.numero} ocupado "
    else
      quarto_encontrado.ocupar_quarto
      nova_reserva = Reserva.new(hospede, quarto_encontrado, dias)
      @reservas_ativas << nova_reserva
    end
  end

  def realizar_checkout(numero_quarto)
    reserva =  @reservas_ativas.find { |reserva| reserva.quarto.numero == numero_quarto  }
    if !reserva
      puts "Reserva não existe no quarto"
      return
    end
    total = reserva.calcular_total
    puts "Checkout de #{reserva.hospede.nome}. Total a pagar por #{reserva.quantidade_dias} dias: R$:#{total}"
    reserva.quarto.liberar_quarto
    @reservas_ativas.delete(reserva)

    puts "Quarto #{numero_quarto} limpo e liberado!"
  end
end

