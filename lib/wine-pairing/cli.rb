Class WinePairing :: CLI

  def call
    greet_menu
    select_wine
    goodbye
  end

  def greet_menu
    puts "Let us help you choose the perfect wine to complement your meal. Please select your main course from the following menu:"
    @menu = WinePairing :: Wine.list
    @menu.each do |wine|
      puts "Your selections include: #{wine.name}, which is #{wine.description}, and has a #{wine.taste} taste."
    end
  end

  def select_wine
    input = ""
    puts "Please describe your meal as red meat, white meat, seafood, variety, or quit."
    input = gets.strip.downcase

    if input == "red meat"
      appropriate_wine = @menu(0)
      puts "You should serve #{appropriate_wine.name} with dinner tonight"
    elsif input == "white meat"
      appropriate_wine = @menu(1)
      puts "You should serve #{appropriate_wine.name} with dinner tonight"
    elsif input == "seafood"
      appropriate_wine = @menu(2)
      puts "You should serve #{appropriate_wine.name} with dinner tonight"
    elsif input == "variety"
      appropriate_wine = @menu(3)
      puts "You should serve #{appropriate_wine.name} with dinner tonight"
    elsif input == "quit"
      goodbye
    else 
      puts "I dont recognize that meal. Please select a meal exaclty as described above."
    end
  end    

  def goodbye
      puts "Join us again tomorrow for dinner!"
    end

end
  