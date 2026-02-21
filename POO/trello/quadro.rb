class Quadro
  attr_reader :nome, :lista_de_tarefas
  def initialize(nome)
    @nome = nome
    @lista_de_tarefas = []
  end

  def adicionar_tarefa(tarefa)
    @lista_de_tarefas << tarefa
    puts "===== ADICIONANDO TAREFA ====="
    puts "Tarefa:#{tarefa.titulo} adicionada ao quadro"
  end

  def mostrar_pendentes
      puts "===== TAREFAS PENDENTES ====="
      pendentes = @lista_de_tarefas.select{|tarefa| tarefa.status == "PENDENTE"}
      pendentes.each{ |tarefa| puts "Tarefa:#{tarefa.titulo}" }         
  end
end