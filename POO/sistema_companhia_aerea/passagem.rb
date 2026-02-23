class Passagem
  attr_reader :passageiro, :voo, :assento
  def initialize(passageiro, voo, assento)
    @passageiro = passageiro
    @voo = voo
    @assento = assento
  end
end