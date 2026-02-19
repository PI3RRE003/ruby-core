require_relative 'usuario'

senhor_dos_aneis = Livro.new("Senhor dos Anéis", "J. R. R. Tolkien")
vitor = Usuario.new("Vitor")

vitor.pegar_emprestado(senhor_dos_aneis)
vitor.devolver(senhor_dos_aneis)