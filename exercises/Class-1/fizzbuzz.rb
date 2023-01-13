for i in 1..100 
  if i % 3 == 0 && i % 5 != 0
    puts "fizz"
  elsif i % 5 == 0 && i % 3 != 0
    puts "buzz"
    elsif i % 5 == 0 && i % 3 == 0
      puts "fizzbuzz"
    end
end

