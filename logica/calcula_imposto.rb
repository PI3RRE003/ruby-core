def calculate_tax(price)
  if price >= 1000
    tax = (price * 0.15)
  else
    tax = (price * 0.1)
  end
end

#puts calculate_tax(100)  # Deve retornar 10.0
#puts calculate_tax(2000) # Deve retornar 300.0

prices = [100, 500, 1000, 1500]

taxes_to_pay = []

prices.each do |price|
    result = calculate_tax(price)
    taxes_to_pay << result
end

#pp taxes_to_pay

cart = [
  { name: "Livro", price: 50 },
  { name: "Console", price: 2000 },
  { name: "Fone", price: 150 }
]

def format_item(hash)
  final_price = hash[:price] + (calculate_tax(hash[:price]))
  return "Item: #{hash[:name]} | Total R$:#{final_price}"
end

cart.each do |item|
    pp format_item(item)
end