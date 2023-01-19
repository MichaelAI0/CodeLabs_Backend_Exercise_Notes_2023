class CLI
  def run
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
    while select != "1" && select != "2"
    
    puts "Choose 1 or 2"
    select = gets.chomp
    menu if select == "1"
    menu_2 if select == "2"
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
      puts "Top Albums based on Music genre"
      puts "Testing"
      user_input = gets.chomp
      break if user_input == 'exit'
    end
  end
end