sentence = "Hello John Doe!"
# We use the ! bang operator to change the value of the variable sentence. 
sentence.sub!("Hello", "Hi") 
puts sentence

solution = "Hi John Doe!"
# We add the .match?() string method and the "?" to print a boolean value. 
puts solution.match?(sentence)