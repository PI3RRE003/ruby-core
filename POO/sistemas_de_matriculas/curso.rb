class Curso
  attr_reader :nome, :vagas_totais, :status
  def initialize(nome,vagas_totais)
    @nome = nome
    @vagas_totais = vagas_totais
    @status = "aberto"
  end

  def encerrar_turma!
    @status = "fechado"
  end
end