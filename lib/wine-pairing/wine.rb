Class WinePairing :: Wine
  attr_accessor :name, :description, :taste

  def self.list
    self.scrape_wines
  end

  def self.scrape_wines
    wines = []
    wines << self.scrape_red
    wines << self.scrape_white
    wines << self.scrape_light
    wines << self.scrape_versatile
    wines
  end

  def self.scrape_red
    doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Merlot"))

    wine = self.new
    wine.name = doc.search("h1#firstHeading.firstHeading").text.strip
    wine.description = doc.search("table.infobox biota p").first.text.strip
    wine.taste = "dry"
  end

  def self.scrape_white
    doc = Nokogiri::HTML(open("https://www.realsimple.com/holidays-entertaining/entertaining/food-drink/basic-wine-varieties"))

    wine = self.new
    wine.name = 
    wine.description = 
    wine.taste = 
  end

  def self.scrape_light
    doc = Nokogiri::HTML(open("https://www.realsimple.com/holidays-entertaining/entertaining/food-drink/basic-wine-varieties"))

    wine = self.new
    wine.name = 
    wine.description = 
    wine.taste = 
  end

  def self.scrape_versatile
    doc = Nokogiri::HTML(open("https://www.realsimple.com/holidays-entertaining/entertaining/food-drink/basic-wine-varieties"))

    wine = self.new
    wine.name = 
    wine.description = 
    wine.taste = 
  end    
end