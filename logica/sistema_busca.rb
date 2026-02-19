# Um Array contendo vários Hashes
catalogo = [
  { nome: "Teclado", preco: 250.0, estoque: 10 },
  { nome: "Mouse", preco: 120.0, estoque: 5 },
  { nome: "Monitor", preco: 900.0, estoque: 2 }
]

print "Digite o nome do produto que procura:"
busca = gets.chomp.to_s.downcase

item_encontrado = nil

catalogo.each do |produto|
    if busca.downcase == produto[:nome].downcase
        item_encontrado = produto
    end
end 

if item_encontrado.nil?
    p"produto #{busca} não encontrado"
elsif item_encontrado[:estoque] <=0 
  p"Aviso: produto sem estoque"
else
  puts "Sucesso: #{item_encontrado[:nome]} custa R$#{item_encontrado[:preco]} (Disponível: #{item_encontrado[:estoque]})"
end