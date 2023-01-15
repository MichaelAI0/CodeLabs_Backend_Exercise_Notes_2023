
def favorite_movie(movie)
   puts "My favorite movie is #{movie}"
end

def favorite_food(food)
  puts "My favorite food is #{food}"
end

def favorite_drink(drink)
  puts "My favorite drink is #{drink}"
end

def list_of_favorite_things(movie, food, drink)
  favorite_movie(movie)
  favorite_food(food)
  favorite_drink(drink)

end

list_of_favorite_things("Jango", "Pizza", "Water")