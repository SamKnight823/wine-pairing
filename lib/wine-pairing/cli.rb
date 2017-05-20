Class WinePairing :: CLI

  def call
    greet_select
    menu
    goodbye
  end

  def greet_select
    puts "Let us help you choose the perfect wine to complement your meal. Please select your main course from the following menu:"
  end

  def menu
    puts "Please type red meat, white meat, seafood, variety, or quit."

  def goodbye
      puts "Join us again tomorrow for dinner!"
    end

end
  