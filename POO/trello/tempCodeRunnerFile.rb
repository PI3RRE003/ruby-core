require_relative 'quadro'
require_relative 'tarefa'

rotina = Quadro.new("Rotina")

pagar_luz = Tarefa.new("Pagar a Luz")
estudar_ruby = Tarefa.new("Estudar Ruby")
fazer_compras = Tarefa.new("Fazer Compras")

rotina.adicionar_tarefa(pagar_luz)
rotina.adicionar_tarefa(estudar_ruby)
rotina.adicionar_tarefa(fazer_compras)

pagar_luz.concluir
rotina.mostrar_pendentes

