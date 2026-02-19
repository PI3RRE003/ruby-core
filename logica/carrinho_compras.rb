itens = [
  { nome: "Jogo PS5", preco: 350, categoria: "games" },
  { nome: "Cadeira Gamer", preco: 1200, categoria: "moveis" },
  { nome: "Zelda: TotK", preco: 300, categoria: "games" }
]

# 1. Quero apenas os games (SELECT)
games = itens.select { |item| item[:categoria] == "games" }

# 2. Quero uma lista apenas com os NOMES dos games em letras maiúsculas (MAP)
nomes_games = games.map { |game| game[:nome].upcase }

# 3. Quero saber o valor total apenas dos games (REDUCE / SUM)
total_games = games.map { |g| g[:preco] }.sum

p nomes_games # => ["JOGO PS5", "ZELDA: TOTK"]
puts "Total: R$#{total_games}" # => Total: R$650