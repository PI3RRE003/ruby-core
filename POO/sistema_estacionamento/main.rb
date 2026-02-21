require_relative 'carro'
require_relative 'estacionamento'

uno = Carro.new("A1")
corsa = Carro.new("A2")
palio = Carro.new("A3")


estacionamento_centro = Estacionamento.new(2)
estacionamento_centro.estacionar(uno)
estacionamento_centro.estacionar(corsa)
estacionamento_centro.retirar("A1")
estacionamento_centro.estacionar(palio)
