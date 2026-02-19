=begin
MINHA FORMA
fruits = ["apple", "banana", "apple", "orange", "banana", "apple"]

counts = {}

fruits.each do |fruit|
    if counts[fruit]
      counts[fruit] += 1
    else
      counts[fruit] = 1
    end
end

pp counts
=end

#FORMA DO GEMINI
fruits = ["apple", "banana", "apple", "orange", "banana", "apple"]

counts = Hash.new(0)

fruits.each do |fruit|
    counts[fruit] += 1
end

pp counts