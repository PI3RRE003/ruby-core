inventory = [
  { name: "Teclado", price: 150 },
  { name: "Mouse", price: 80 },
  { name: "Monitor", price: 900 },
  { name: "Fone", price: 120 }
]

expensive_products = []

total_value = 0

print"Todos os Produtos:\n" 
inventory.each do |product|
    if product[:price] > 100
      expensive_products << product
    end
    
    total_value += product[:price]
    puts"Produto:#{product[:name]} Preço:#{product[:price]}"
  end

print"\nValor total:#{total_value}\n"
  
print"\nProdutos acima de R$:100\n"
expensive_products.each do |product|
  puts"Produto:#{product[:name]} Preço:#{product[:price]}" 
end
  