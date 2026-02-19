# Objetivo: Criar um método que saúda o usuário
def saudar(nome)
  # Use o método de conversão para garantir que o nome seja String
  nome_limpo = nome.to_s.capitalize
  return "Olá, #{nome_limpo}!"
end

puts saudar("kaw") # O que vai aparecer aqui?