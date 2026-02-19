require_relative 'livro'

class Usuario
  attr_reader :nome, :livros_emprestados
  def initialize(nome)
    @nome = nome
    @livros_emprestados = []
  end

  def pegar_emprestado(livro)
    if livro.disponivel == true
      @livros_emprestados << livro
      livro.emprestar
      puts "#{@nome} alugou o Livro:#{livro.titulo} com sucesso !"
    else
      puts "#{livro.titulo} está alugado"
    end
  end

  def devolver(livro)
    @livros_emprestados.delete(livro)
    livro.devolver
    puts "#{@nome} devolveu o livro:#{livro.titulo}"
  end
end
