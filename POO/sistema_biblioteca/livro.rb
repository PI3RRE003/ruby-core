

class Livro
    attr_reader :titulo, :autor, :disponivel
    def initialize(titulo,autor)
      @titulo = titulo
      @autor = autor
      @disponivel = true
    end

    def emprestar
      @disponivel = false
    end

    def devolver
      @disponivel = true
    end
end

