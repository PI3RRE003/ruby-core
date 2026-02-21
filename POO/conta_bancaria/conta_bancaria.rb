class ContaBancaria
  attr_reader :titular, :saldo 

  def initialize(titular, saldo_inicial)
    @titular = titular
    @saldo = saldo_inicial
  end

  def limite_disponivel
    @saldo
  end

  def depositar(valor)
    @saldo += valor
    puts "Depósito de R$ #{valor} realizado na conta de #{@titular}."
  end

  def sacar(valor)
    if valor > limite_disponivel
      puts "Saque não realizado no valor de R$:#{valor} está acima do seu saldo:#{@saldo}"
      return
    end
    
    @saldo -= valor
    puts "Saque realizado de R$:#{valor} Novo Saldo R$:#{@saldo} "
  end

  def transferir(valor, conta)
    if valor <= limite_disponivel 
      sacar(valor)
      conta.depositar(valor)
    else
      puts"Erro: saldo insuficiente"
    end
  end
end




