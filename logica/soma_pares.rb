numbers = [1, 2, 3, 4, 5, 6, 10, 11]
even = []
sum = 0

numbers.each do |number|
    if number % 2 == 0
      sum += number
      even << number
    end
end

puts "A soma de todos os pares no array é de:#{sum}"
puts "Numeros pares:#{even}"