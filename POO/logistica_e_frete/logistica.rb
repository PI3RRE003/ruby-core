module Logistica #aprendendo sobre Namespaces com modulos
  class ErroDeValidacao < StandardError 
    #criando minha propria exeção
  end

  class CalculadoraFrete
      def self.calcular(distancia_km, peso_kg)
        if distancia_km <= 0 || peso_kg <= 0
          raise ErroDeValidacao, "Valores não podem ser menores ou iguais a zero"
        end

        calculo_valor_final = (distancia_km * 0.5) + (peso_kg * 2)
        return calculo_valor_final
      end
  end
end


begin
  calculo = Logistica::CalculadoraFrete.calcular(0,-5) #forma que o modulo e chamado com a classe desejada e su=eu metodo
  puts"Valor do frete: #{calculo}"
rescue Logistica::ErroDeValidacao => erro
  puts "#{erro.message}"
end

