require_relative 'conta_bancaria'
require_relative 'conta_corrente'
require_relative 'conta_poupanca'

cp = ContaPoupanca.new("Kaw", 2000)

cp.transferir(100, cp)
cp.render_juros
cp.saldo
