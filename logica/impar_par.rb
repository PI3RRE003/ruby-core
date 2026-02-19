numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
even_numbers = []
odd_numbers = []

numbers.each do |number|
    if number % 2 == 0
        even_numbers << number
    else
        odd_numbers << number 
    end
end 

print "Numeros:#{numbers}\n"
print "Numeros pares:#{even_numbers}\n"
print "Numeros impares:#{odd_numbers}\n"