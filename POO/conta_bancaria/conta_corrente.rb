require_relative 'conta_bancaria'

class ContaCorrente < ContaBancaria
    def initialize(titular,saldo_inicial, cheque_especial=5000)
      super(titular,saldo_inicial)
      @cheque_especial = cheque_especial
    end

    def limite_disponivel
      @saldo + @cheque_especial
    end

    def sacar(valor)
      if valor > limite_disponivel
        puts "Saque não realizado ! no valor de R$:#{valor} maior que saldo R$:#{@saldo}"
        return
      end

      @saldo -= valor
      puts "Saque de R$:#{valor} realizado com sucesso !"
    end
end

