require 'rspec'
require_relative 'carrinho_compras'
require_relative 'produto'

RSpec.describe Carrinho do
  let(:coca) { Produto.new("Coca-Cola", 50) }
  let(:pepsi) { Produto.new("Pepsi", 50) }
  let(:agua)  { Produto.new("Agua", 20) }
  let(:bug)   { Produto.new("Erro", -100) } # Item com preço negativo

  describe '#calcular_total' do
    context 'Cenários Normais' do
      it 'retorna a soma sem desconto quando menor que 100' do
        carrinho = Carrinho.new([coca, agua])
        expect(carrinho.calcular_total).to eq(70)
      end

      it 'aplica 10% de desconto quando igual ou maior que 100' do
        carrinho = Carrinho.new([coca, pepsi])
        expect(carrinho.calcular_total).to eq(90.0)
      end
    end

    context 'Cenários de Erro (Edge Cases)' do
      it 'ignora produtos com preço negativo' do
        # Tenho 50 (Coca) + (-100 Bug). O total deveria ser -50? 
        # Não, a regra diz para ignorar o negativo, então espero 50.
        carrinho = Carrinho.new([coca, bug])
        expect(carrinho.calcular_total).to eq(50)
      end

      it 'retorna 0 se o carrinho estiver vazio' do
        carrinho = Carrinho.new([])
        expect(carrinho.calcular_total).to eq(0)
      end
    end
  end
end