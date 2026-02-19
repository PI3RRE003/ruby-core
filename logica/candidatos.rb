votos_brutos = [
  "Síndico A", 
  "Síndico B", 
  "Síndico A", 
  "Síndico C", 
  "Síndico A", 
  "Síndico B", 
  "Nulo", 
  "Síndico B"
]

quantidade = Hash.new(0)

votos_brutos.each do |voto|
    quantidade[voto] += 1
end

puts quantidade