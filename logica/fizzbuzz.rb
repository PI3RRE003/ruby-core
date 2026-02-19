
range = (1..20)

range.each do |number|
  if number % 15 == 0
    puts "#{number} fizzbuzz"
  elsif number % 3 == 0
    puts "#{number} fizz"
  elsif number % 5 == 0
     puts "#{number} buzz"
  else
    puts"#{number}"
  end
end