num_array = (1..10).to_a
# puts num_array.first
# puts num_array.last
# puts num_array.size
# puts num_array.count
# puts num_array.unshift(11)
# puts num_array << 12


# num_array.each do |num|
#   puts num
# end

##  using .each_with_index method
# num_array.each_with_index do |num, i|
#   puts "Number at index #{i} is #{num}"
# end

## You can also use for loop to print out the elements
# for i in num_array
#   puts i * 2
# end

# You can also use for loop to print out the elements after multiplying by 2
# for i in num_array
#   puts i*2
# end

# or use the .each array method 
# num_array.each do |number|
#   puts number * 2
# end

puts "What number would you like to test?"
test_number = gets.chomp.to_i 

# using the .each method 
# num_array.each do |number|
#   result = number * test_number
#   if result.even?
#     puts "#{result} is an even number"
#   else
#     puts "#{result} is an odd number"
#   end
# end

# this is using the for loop 
# for i in num_array
#   result = i * test_number
#   if result.even?
#   puts "#{result} is an even number"
# else
#   puts "#{result} is an odd number"
# end
# end

result = num_array.map { |number| number * test_number }
result.each do |res|
    if res.even?
        puts "#{res} is an even number"
    else
        puts "#{res} is an odd number"
    end
end


# using the select method to print out the elements
# result = num_array.map { |number| number * test_number }.select {|x| x.even?}
# result.each do |res|
#     puts "#{res} is an even number"
# end