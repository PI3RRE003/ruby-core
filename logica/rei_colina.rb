def maior_numero_da_lista(lista)
    maior = lista[0]

    lista.each do |numero|
      if numero > maior 
        maior = numero
      end
    end
    maior
end

puts maior_numero_da_lista([10, 50, 2, 30])    # Deve imprimir 50
puts maior_numero_da_lista([-10, -2, -50])     # Deve imprimir -2