class Musica 
  attr_reader :titulo, :artista, :duracao
  def initialize(titulo, artista, duracao)
    @titulo = titulo
    @artista = artista
    @duracao = duracao
  end

  def tocar
    puts "Tocando: #{@titulo} de #{@artista}"
  end
end