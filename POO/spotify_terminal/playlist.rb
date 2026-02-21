class Playlist
  def initialize(nome)
    @nome = nome
    @musicas = []
  end

  def adicionar_musica(musica)
    @musicas << musica
  end

  def tocar_todas
    puts"===== #{@nome} ====="
    @musicas.each { |musica| musica.tocar  }
  end
end