def two_sum_brute_force(nums, target)
  # Loop Externo (O "i" segura o primeiro número)
  nums.each_with_index do |num1, i|
    
    # Loop Interno (O "j" procura o par)
    # IMPORTANTE: O 'j' começa em (i + 1). 
    # Por que? Para não somar o número com ele mesmo e não repetir pares já testados.
    ((i + 1)...nums.length).each do |j|
      num2 = nums[j]
      
      # A Verificação
      if num1 + num2 == target
        return [i, j] # Achamos! Retorna os índices imediatamente.
      end
      
    end
  end
  # Se o código chegar aqui, não achou nada.
  nil 
end

# Testes
puts "Teste 1: #{two_sum_brute_force([2, 7, 11, 15], 9)}" 
# i=0 (valor 2). j começa em 1 (valor 7). 2+7=9? SIM. Retorna [0, 1].

puts "Teste 2: #{two_sum_brute_force([3, 5, 8, 3], 6)}"
# i=0 (valor 3). j=1 (5).. j=2 (8).. j=3 (3). 3+3=6? SIM. Retorna [0, 3].