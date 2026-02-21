class Tarefa
  attr_reader :titulo, :status
  def initialize(titulo)
    @titulo = titulo
    @status = "PENDENTE"
  end

  def concluir
    @status = "CONCLUIDO"
    puts "===== CONCLUINDO TAREFA ====="
    puts "Tarefa Concluida:#{@nome}"
  end
  
end