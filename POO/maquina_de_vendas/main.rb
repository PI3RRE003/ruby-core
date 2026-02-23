require_relative 'maquina_de_vendas'
require_relative 'produto'

doritos = Produto.new("doritos", 5, 1)
pepsi = Produto.new("pepsi", 4, 5)

maquina_de_vendas =  MaquinaDeVendas.new



# Execução Corrigida:
maquina_de_vendas.inserir_valor(10)
maquina_de_vendas.adicionar_produto(doritos)
maquina_de_vendas.adicionar_produto(pepsi)

# Passamos o NOME (String), e não o objeto
puts "\n--- Primeira Compra ---"
maquina_de_vendas.comprar("doritos") 

puts "\n--- Segunda Compra ---"
maquina_de_vendas.comprar("pepsi")