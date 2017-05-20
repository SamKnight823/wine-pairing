Class WinePairing :: WinePairing
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
    
end