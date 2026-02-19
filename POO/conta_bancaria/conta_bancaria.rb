class ContaBancaria
  attr_reader :titular, :saldo # Apenas leitura! Ninguém pode fazer conta.saldo = 1000000

  def initialize(titular, saldo_inicial)
    @titular = titular
    @saldo = saldo_inicial
  end

  def depositar(valor)
    @saldo += valor
    puts "Depósito de R$ #{valor} realizado na conta de #{@titular}."
  end

  def sacar(valor)
    if valor > @saldo
      puts "Saque não realizado no valor de R$:#{valor} está acima do seu saldo:#{@saldo}"
      return
    end
    
    @saldo -= valor
    puts "Saque realizado de R$:#{valor} Novo Saldo R$:#{@saldo} "
  end
end

class ContaPoupanca < ContaBancaria
    def render_juros
      @saldo = (@saldo * 0.05) + @saldo
      puts "Novo Saldo com Juros R$:#{@saldo}"
    end
end

class ContaCorrente < ContaBancaria
    def sacar(valor)
      taxa = 5
      total_com_taxa = valor + taxa

      if total_com_taxa > @saldo
        puts "Saque não realizado ! valor R$:#{total_com_taxa} maior que saldo R$:#{@saldo}"
        return
      end

      @saldo -= total_com_taxa
      puts "Saque de R$:#{total_com_taxa} realizado com sucesso !"
    end
end


=begin TESTANDO CONTA BANCARIA SEM POUPANÇA
# --- TESTES (Copie isso também para validar) ---
minha_conta = ContaBancaria.new("Vitor", 1000)

puts "Saldo Inicial: #{minha_conta.saldo}"

minha_conta.depositar(500)   # Saldo vai para 1500
minha_conta.sacar(200)       # Deve sobrar 1300
minha_conta.sacar(5000)      # Deve dar erro e manter 1300

puts "Saldo Final: #{minha_conta.saldo}"
=end

=begin
# --- TESTE ---
poupanca = ContaPoupanca.new("Vitor", 0)
poupanca.depositar(100) # Funciona? (Deve funcionar pq herda)
poupanca.render_juros   # Funciona? (Deve aumentar o saldo)
puts "Saldo final: #{poupanca.saldo}"
=end

# Teste
cc = ContaCorrente.new("Vitor", 100)
cc.sacar(10) # Deve descontar 15 (10 do saque + 5 da taxa)
puts "Saldo:#{cc.saldo}" # Deve ser 85