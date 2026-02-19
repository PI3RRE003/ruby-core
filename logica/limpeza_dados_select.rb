nomes = ["Maria", "", "Bob", nil, "Charlie"]

nomes_limpos = nomes.select do |nome|
  nome != "" && nome != nil 
end

p nomes_limpos