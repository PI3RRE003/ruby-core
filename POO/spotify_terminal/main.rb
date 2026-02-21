require_relative 'musica'
require_relative 'playlist'

sonar = Musica.new('Sonar', 'Yunk Vino', 2.00)
leans = Musica.new('Leans pt 2', 'Yunk Vino', 2.30)

playlist_yunk = Playlist.new("As Melhores do Yunk Vino")
playlist_yunk.adicionar_musica(sonar) 
playlist_yunk.adicionar_musica(leans) 
playlist_yunk.tocar_todas

#este codigo consiste em 1:N que seria uma musica para M playlists