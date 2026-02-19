def ordenar_lista(lista)
  n = lista.length
  
  # Loop 1: Passar várias vezes pela lista
  # DICA: loop (n-1) vezes
  (n - 1).times do
    # Loop 2: Comparar vizinhos
    # Precisamos ir de 0 até (n-2) para não estourar o índice
    (n - 1).times do |i|
      # LÓGICA:
      # Se o atual (lista[i]) for MAIOR que o próximo (lista[i + 1])
      # ENTÃO: Troque eles de lugar.
      if lista[i] > lista[i + 1]
        lista[i] , lista[i + 1] = lista[i + 1], lista[i]
      end
      
    end
  end
  
  lista
end

# Teste
numeros = [5, 1, 4, 2, 8]
puts "Ordenado: #{ordenar_lista(numeros)}" 
# Esperado: [1, 2, 4, 5, 8]