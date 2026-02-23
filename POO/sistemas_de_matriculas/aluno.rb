class Aluno 
  attr_reader :nome, :matricula
  def initialize(nome,matricula)
    @nome = nome
    @matricula = matricula
  end
end