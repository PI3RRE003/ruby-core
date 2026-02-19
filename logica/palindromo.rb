def palindromo?(string)
    texto_limpo = string.downcase.delete(" ")

    if texto_limpo == texto_limpo.reverse
      true
    else
      false
    end    
end

puts "Teste 1: #{palindromo?('Ovo')}"                   # Esperado: true
puts "Teste 2: #{palindromo?('A base do teto desaba')}" # Esperado: true
puts "Teste 3: #{palindromo?('Ruby')}"                  # Esperado: false