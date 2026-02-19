reais = [10, 20, 50, 100]
dolares = reais.map do |real|
    dolar = 5
    real * dolar
end

pp "Real:#{reais}"
pp "Real convertido para Dolares: #{dolares}"
