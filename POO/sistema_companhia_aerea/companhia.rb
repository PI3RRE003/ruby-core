class Companhia 
  def initialize(nome)
    @nome = nome
    @voos = []
    @passagens_emitidas = []
  end

  def cadastrar_voo(voo)
    @voos << voo
    puts "Cadastrando Voo #{voo.numero}"
  end

  def vender_passagem(passageiro, numero_voo, assento)
    voo_encontrado = @voos.find { |voo| voo.numero == numero_voo  }
    if !voo_encontrado
      puts "Voo não encontrado"
      return
    elsif voo_encontrado.status == "embarcando"
      puts "Voo indisponivel"
      return
    else
      lotacao = @passagens_emitidas.select { |passagem| passagem.voo == voo_encontrado }
      if lotacao.length >= voo_encontrado.capacidade_maxima
        puts "Voo lotado"
        return
      end

      assento_ocupado = lotacao.find { |passagem| passagem.assento == assento  }
      if assento_ocupado
        puts "Assento ocupado"
        return
      end

      passagem = Passagem.new(passageiro,voo_encontrado,assento)
      @passagens_emitidas << passagem
      puts "Sucesso! Passagem comprada para #{passageiro.nome} no assento #{assento}."
    end
  end

  def listar_embarque(numero_voo)
    @passagens_emitidas.each do |passagem|
      if passagem.voo.numero == numero_voo
        puts "Assento: #{passagem.assento} | Nome: #{passagem.passageiro.nome} - CPF: #{passagem.passageiro.cpf}"
      end
    end
  end
end