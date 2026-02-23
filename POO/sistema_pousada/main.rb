require_relative 'hospede'
require_relative 'quarto'
require_relative 'pousada'
require_relative 'reserva'


pousada = Pousada.new("Pousada Recanto")
q1 = Quarto.new(101, 150.0)
q2 = Quarto.new(102, 200.0)

pousada.cadastrar_quarto(q1)
pousada.cadastrar_quarto(q2)


pousada.quartos_disponiveis 

vitor = Hospede.new("Vitor")
kaw = Hospede.new("Kaw")

pousada.realizar_checkin(vitor, 101, 3) 
pousada.realizar_checkin(kaw, 101, 2)   
pousada.realizar_checkin(kaw, 102, 2)   

pousada.quartos_disponiveis

pousada.realizar_checkout(101)
pousada.realizar_checkout(102)