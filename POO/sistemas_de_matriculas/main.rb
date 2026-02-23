require_relative 'aluno'
require_relative 'curso'
require_relative 'faculdade'
require_relative 'inscricao'

# 1. Cria a faculdade e o curso
faculdade = Faculdade.new("Tech University")
curso_ruby = Curso.new("Ruby Avançado", 2) # Capacidade para SÓ 2 alunos!

faculdade.cadastrar_curso(curso_ruby)

# 2. Cria os alunos
vitor = Aluno.new("Vitor", "MAT-01")
kaw = Aluno.new("Kaw", "MAT-02")
davi = Aluno.new("Davi", "MAT-03")

# 3. Inicia o período de matrículas
faculdade.matricular_aluno(vitor, "Ruby Avançado") # Sucesso
faculdade.matricular_aluno(vitor, "Ruby Avançado") # ERRO: Aluno já matriculado neste curso!
faculdade.matricular_aluno(kaw, "Ruby Avançado")   # Sucesso

faculdade.matricular_aluno(davi, "Ruby Avançado")  # ERRO: Turma lotada! (Eram só 2 vagas)

# 4. Imprime o diário de classe
faculdade.diario_de_classe("Ruby Avançado")
# Deve imprimir a lista contendo apenas o Vitor e a Kaw.

# 5. Coordenação encerra a turma
curso_ruby.encerrar_turma!

# 6. Tenta matricular alguém com a turma fechada
novo_aluno = Aluno.new("Lucas", "MAT-04")
faculdade.matricular_aluno(novo_aluno, "Ruby Avançado") # ERRO: Matrículas encerradas.