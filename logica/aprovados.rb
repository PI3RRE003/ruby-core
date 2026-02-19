alunos = [
  { nome: "Alice", nota: 9 },
  { nome: "Beto", nota: 5 },
  { nome: "Carla", nota: 8 },
  { nome: "Diego", nota: 4 }
]

aprovados = alunos.select {|a| a[:nota] > 6 }
mensagem_aprovados = aprovados.map{|a| "Parabens #{a[:nome]} voce passou !"}

soma_notas = alunos.sum{|aluno| aluno[:nota]}
media = soma_notas.to_f / alunos.size


puts "--- RESULTADOS ---"
puts mensagem_aprovados
puts "------------------"
puts "Média da Turma: #{media.round(2)}"
