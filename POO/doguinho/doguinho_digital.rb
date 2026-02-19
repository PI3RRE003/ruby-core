class Cachorro
    attr_reader :nome, :raca
    def initialize(nome, raca)
      @nome = nome
      @raca = raca
    end

    def latir 
      puts"#{@nome} fez Au Au !" 
    end
end

mel = Cachorro.new("Mel", "Pinscher")
nala = Cachorro.new("Nala", "Pit-Bull")


mel.latir
nala.latir