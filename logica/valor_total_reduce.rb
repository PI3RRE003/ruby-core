faturamento =  [150.50, 200.00, 50.25]

total = faturamento.reduce(0) do |soma, preco| 
    soma + preco
end

p total