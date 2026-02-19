
def two_sum(array, target)
   visto = {}
   array.each_with_index do |numero, indice|
      complemento = target - numero 

      if visto.key?(complemento)
        indice_complemento = visto[complemento]
        return [indice_complemento, indice]
      end
      visto[numero] = indice
   end
end

# Teste
puts "Resultado: #{two_sum([2, 7, 11, 15], 9)}" 
# Esperado: [0, 1]

puts "Resultado 2: #{two_sum([3, 2, 4], 6)}" 
# Esperado: [1, 2]