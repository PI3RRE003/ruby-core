require_relative 'conta_bancaria'

class ContaPoupanca < ContaBancaria
    def render_juros
      juros = (@saldo * 0.05)
      puts "Juros Rendidos R$:#{juros} na Conta Poupança de #{@titular} - Novo Saldo R$:#{@saldo}"
      depositar(juros) #usando metodos ja existentes para evitar repetição de codigo
    end
end
