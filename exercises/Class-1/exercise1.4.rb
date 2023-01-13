
# puts "What is your name?"
# name = gets.chomp.downcase.capitalize

# puts "Your name is #{name}"

# if name == "John" 
#   puts "I found you!"
# else 
#   puts "Your not who I'm looking for."
# end

puts "What is your first name?"
first_name = gets.chomp.downcase.capitalize.to_s 
puts "What is your last name?"
last_name = gets.chomp.downcase.capitalize.to_s 

if first_name == "John" && last_name == "Doe"
puts "I found you!"
elsif first_name == "Amy" && last_name == "Jeans" 
puts "Amy! Help me look for John Doe."
else 
  puts " Your not who I'm looking for."
end