produto = { 
  nome: "Teclado Mecânico", 
  preco: 250.00, 
  estoque: 10 
}

puts produto
print"Digite a quantidade que deseja comprar:"
quantidade = gets.chomp.to_i

if quantidade <= 0
  p "Digite apenas numeros positivos"
elsif produto[:estoque] == 0
    p "Produto sem Estoque"
elsif quantidade <= produto[:estoque]  
  total = produto[:preco] * quantidade
  produto[:estoque] -= quantidade

  p "Produto:#{produto[:nome]} - Preço R$:#{produto[:preco]} - Quantidade:#{quantidade} - Total:#{total}"
  p produto
end