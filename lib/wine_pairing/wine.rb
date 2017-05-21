class WinePairing::Wine
  attr_accessor :name, :description, :taste

  def initialize
    @name = name
    @description = description
    @taste = taste
  end

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
    doc = Nokogiri::HTML(open("http://www.wines.com/wine-varietals/"))

    wine = self.new
    wine.name = doc.search("h5:nth-of-type(54)").text.strip
    wine.description = doc.search("p:nth-of-type(62)").text.strip
    wine.taste = "dry"

    wine
  end

  def self.scrape_white
    doc = Nokogiri::HTML(open("http://www.wines.com/wine-varietals/"))

    wine = self.new
    wine.name = doc.search("h5:nth-of-type(24)").text.strip
    wine.description = doc.search("p:nth-of-type(32)").text.strip.downcase
    wine.taste = "sweeter"

    wine
  end

  def self.scrape_light
    doc = Nokogiri::HTML(open("http://www.wines.com/wine-varietals/"))

    wine = self.new
    wine.name = doc.search("hh5:nth-of-type(74)").text.strip
    wine.description = doc.search("p:nth-of-type(82)").text.strip.downcase
    wine.taste = "dry,sweet"

    wine
  end

  def self.scrape_versatile
    doc = Nokogiri::HTML(open("http://www.wines.com/wine-varietals/"))

    wine = self.new
    wine.name = doc.search("h5:nth-of-type(66)").text.strip
    wine.description = doc.search("p:nth-of-type(74)").text.strip.downcase
    wine.taste = "slightly dry, slightly sweet"

    wine
  end
end
