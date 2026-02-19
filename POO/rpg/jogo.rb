class Personagem
    attr_reader :nome, :vida, :dano
    def initialize(nome, dano, vida=100)
      @nome = nome
      @vida = vida
      @dano = dano
    end

    def atacar(alvo)
      puts "#{@nome} Atacou"
      alvo.receber_dano(@dano)
    end

    def receber_dano(valor)
        if valor >= @vida
          puts "#{@nome} morreu"
        end
        @vida -= valor
        puts "#{@nome} recebeu um dano de:#{valor}"
    end
end

class Guerreiro < Personagem
    def initialize(nome)
      super(nome,100,15)
    end

    def atacar(alvo)
      puts "#{@nome} Usou a Espada ! Dano:15"
      alvo.receber_dano(@dano)
    end
end

class Mago < Personagem
  attr_reader :mana
  def initialize(nome, mana=100)
      super(nome, 20, 100)

      @mana = mana
  end
  
  def atacar(alvo)
    if @mana < 10
      puts "💨 #{@nome} tentou atacar, mas está sem mana!"
      return
    end
    @mana -= 10
    puts "#{@nome} Lançou Bola de Fogo ! Dano:20 e Gastou 10 de Mana"
    alvo.receber_dano(@dano)
  end
end

# --- A BATALHA ---

conan = Guerreiro.new("Conan")
gandalf = Mago.new("Gandalf")

puts "\n--- Round 1 ---"
conan.atacar(gandalf) 
# Conan bate 15. Gandalf tinha 80, vai para 65.

puts "\n--- Round 2 ---"
gandalf.atacar(conan)
# Gandalf bate 20. Conan tinha 100, vai para 80.

puts "\n--- Round 3 (Gandalf fica louco) ---"
gandalf.atacar(conan)
gandalf.atacar(conan)
gandalf.atacar(conan) # Vai gastando mana e vida do Conan