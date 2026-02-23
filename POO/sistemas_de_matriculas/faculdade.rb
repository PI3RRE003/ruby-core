class Faculdade 
  def initialize(nome)
    @cursos = []
    @inscricoes_realizadas = []
  end

  def cadastrar_curso(curso)
    @cursos << curso
    puts"Curso:#{curso.nome} Adicionado na Faculdade" 
  end

  def matricular_aluno(aluno, nome_do_curso)
    curso_encontrado = @cursos.find { |curso| curso.nome == nome_do_curso}
    if !curso_encontrado
      puts "Curso:#{nome_do_curso} não encontrado"
      return
    end

    if curso_encontrado.status == "fechado"
      puts "Matriculas do curso:#{curso_encontrado.nome} encerradas"
        return
    end

    lotacao = @inscricoes_realizadas.select { |inscricao| inscricao.aluno == aluno }
    if lotacao.length >= curso_encontrado.vagas_totais
      puts "Vagas do curso:#{curso_encontrado.nome} lotadas"
      return
    end
    
    verifica_aluno = @inscricoes_realizadas.find{|aluno| aluno.nome }
    if verifica_aluno == aluno.nome
      puts "Aluno ja cadastrado"
      return
    end 

    inscricao = Inscricao.new(aluno, nome_do_curso)
    @inscricoes_realizadas << inscricao
    puts "Inscrição Realizada com Sucesso ! Aluno:#{aluno.nome} - Curso:#{nome_do_curso}"
  end

  def diario_de_classe(nome_do_curso)
    curso_encontrado = @cursos.find{|curso_encontrado| curso_encontrado.nome == nome_do_curso}
    inscricoes = @inscricoes_realizadas.select{|inscricao| inscricao.curso == curso_encontrado}
    inscricoes.each do |inscricao|
      puts "Matricula:#{inscricao.aluno.matricula} - Aluno:#{inscricao.aluno.nome}"
    end
  end
end