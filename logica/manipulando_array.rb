numbers = [10, 20, 30, 40]
updated_numbers =  []

numbers.each do |number|
    double = number * 2
    updated_numbers << double  
end

print "Numeros originais:#{numbers}\n"
print "Numeros atualizados:#{updated_numbers}"
