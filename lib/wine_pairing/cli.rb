class WinePairing::CLI

  def call
    greet_menu
    select_wine
    goodbye
  end

  def greet_menu
    puts "Let us help you choose the perfect wine to complement your meal."
    @menu = WinePairing::Wine.list
    @menu.each.with_index(1) do |wine,i|
      puts "Your possible selections include: #{i}. #{wine.name} which has a #{wine.taste} taste and the following description: #{wine.description}"
    end
  end

  def select_wine
    input = ""
    counter = 0
    while counter < 4
    counter +=1
    puts "Please describe your meal as red meat, white meat, seafood, variety, or type quit."
    input = gets.strip.downcase
      if input == "red meat"
        appropriate_wine = @menu[0]
        puts "You should serve #{appropriate_wine.name} with dinner tonight. Would you like a bargain suggestion followed by a splurge suggestion? Y or N?"
          suggest_merlot
      elsif input == "white meat"
        appropriate_wine = @menu[1]
        puts "You should serve #{appropriate_wine.name} with dinner tonight. Would you like a bargain suggestion followed by a splurge suggestion? Y or N?"
          suggest_chardonnay
      elsif input == "seafood"
        appropriate_wine = @menu[2]
        puts "You should serve #{appropriate_wine.name} with dinner tonight. Would you like a bargain suggestion followed by a splurge suggestion? Y or N?"
          suggest_sav
      elsif input == "variety"
        appropriate_wine = @menu[3]
        puts "You should serve #{appropriate_wine.name} with dinner tonight. Would you like a bargain suggestion followed by a splurge suggestion? Y or N?"
          suggest_pinot
      elsif input == "quit"
        break
      else
        puts "I dont recognize that meal. Please select a meal exaclty as described above."
      end
    end
  end

  def suggest_merlot
    input = nil
    input = gets.strip.upcase
    if input == "Y"
        @brands = WinePairing::Brands.scrape_merlot
        @brands.each do |hash|
          hash.each do |key, value|
          puts "#{key}: #{value}"
          end
        end
    else
      goodbye
    end
  end



  def suggest_chardonnay
    input = nil
    input = gets.strip.upcase
    if input == "Y"
      @brands = WinePairing::Brands.suggest
      suggestion = @brands[1]
      puts "#{suggestion.retailer} sells an excellent #{suggestion.brand} that costs #{suggestion.price}."
    else
      goodbye
    end
  end

  def suggest_sav
    input = nil
    input = gets.strip.upcase
    if input == "Y"
      @brands = WinePairing::Brands.suggest
      suggestion = @brands[2]
      puts "#{suggestion.retailer} sells an excellent #{suggestion.brand} that costs #{suggestion.price}."
    else
      goodbye
    end
  end

  def suggest_pinot
    input = nil
    input = gets.strip.upcase
    if input == "Y"
      @brands = WinePairing::Brands.suggest
      suggestion = @brands[3]
      puts "#{suggestion.retailer} sells an excellent #{suggestion.brand} that costs #{suggestion.price}."
    else
      goodbye
    end
  end

  def goodbye
      puts "Join us again tomorrow for dinner!"
  end
end
