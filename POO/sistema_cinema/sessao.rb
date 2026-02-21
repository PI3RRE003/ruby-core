class Sessao
  attr_reader :nome_do_filme, :capacidade_maxima, :ingressos_vendidos
    def initialize(nome_do_filme, capacidade_maxima)
      @nome_do_filme = nome_do_filme
      @capacidade_maxima = capacidade_maxima
      @ingressos_vendidos = []
    end

    def vender_ingresso(ingresso)
      puts "===== VENDENDO INGRESSO ====="
      if @ingressos_vendidos.length >= @capacidade_maxima
        puts "Sessão para #{@nome_do_filme} lotada, ingresso indisponivel"
        return
      end
      @ingressos_vendidos << ingresso
      puts "Ingresso para #{@nome_do_filme} vendido com sucesso !"
    end

    def receita_total
      total = @ingressos_vendidos.sum{|ingresso| ingresso.preco}
        puts"Receita Total da Sessão R$:#{total}"
    end
end