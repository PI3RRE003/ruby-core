require_relative 'item'
require_relative 'mesa'

hamburguer = Item.new("X-Bacon", 30)
coca = Item.new("Coca-Cola", 6)

mesa = Mesa.new(1)

mesa.ocupar!
mesa.fazer_pedido(hamburguer)
mesa.fazer_pedido(coca)
mesa.fechar_conta