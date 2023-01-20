class CLI
  def run
    User.seed
    signup_or_login
    puts "Welcome to Music Mixer!"
    input = ""
    while input != "exit" 
      choice
      puts "Type exit if you would like to close the cli otherwise press enter."
      input = gets.chomp 
    end
    
    puts "Goodbye!"
  end

  def choice
    select = ""
    while select != "album" && select != "tracks"
    
    puts "Type Album or Tracks to see all-time best based on genre"
    select = gets.chomp.downcase
    menu if select == "tracks"
    menu_2 if select == "album"
    break if select == "exit"

  end
  end

  def menu 
    user_input = ""
    while user_input != "exit"
      puts "Top tracks based on Music genre"
      puts "rock, hip-hop, indie, jazz, reggae, british, punk, 80s, dance, acoustic, rnb, hardcore, country, blues, alternative, metal, classical, rap, country"
      puts "Choose a genre:"
      user_input = gets.chomp

      break if user_input == 'exit'
      Scraper.scrape_and_print_music(user_input)
    end

  end

  def menu_2
    user_input = ""
    while user_input != "exit"
      puts "Top albums based on Music genre"
      puts "rock, hip-hop, indie, jazz, reggae, british, punk, 80s, dance, acoustic, rnb, hardcore, country, blues, alternative, metal, classical, rap, country"
      puts "Choose a genre:"
      user_input = gets.chomp

      break if user_input == 'exit'
      Scraper.scrape_and_print_music_top(user_input)
    end
  end

  def signup_or_login
    user_input = ""
    while user_input != "exit"
      puts "Please enter login or signup"
      user_input = gets.chomp
      if user_input == "login"
        login
        break;
      elsif user_input == "signup"
        signup
        break;
      end
    end
  end

  def login
    authenticate = false
    while authenticate == false
      puts "Please enter your username."
      username = gets.chomp
      puts "Please enter your password"
      password = gets.chomp

      if User.authenticate_user(username, password)
        authenticate = true
        puts "Login successful."
      end
    end
  end

  def signup
    puts "Please enter a username"
    username = gets.chomp
    puts "Please enter a password"
    password = gets.chomp
    puts "Sign up successful. Please login."
    User.new(username, password)
    login
  end
end