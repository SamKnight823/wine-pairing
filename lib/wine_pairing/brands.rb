class WinePairing::Brands
  attr_accessor :brand, :retailer, :price

  def initialize
    @brand = brand
    @retailer = retailer
    @price = price
  end

  def self.suggest
    self.scrape_brands
  end

  def self.scrape_brands
    brands = []
    brands << self.scrape_merlot
    brands << self.scrape_chardonnay
    brands << self.scrape_sav
    brands << self.scrape_pinot
    brands
  end

  def self.scrape_merlot

    doc = Nokogiri::HTML(open("https://vinepair.com/articles/10-most-popular-american-merlots/"))

    merlot = self.new
    merlot.brand = doc.search("h3.float-fix:nth-of-type(2) strong").text.strip
    merlot.retailer = doc.search("div.block.footer-widget-2 h3").text.strip
    merlot.price = "$10"

    merlot

  end

  def self.scrape_chardonnay

    doc = Nokogiri::HTML(open("https://vinepair.com/buy-this-booze/10-affordable-chardonnays-that-arent-oak-bombs/"))

    wine = self.new
    wine.brand = doc.search("h3.float-fix:nth-of-type(6) a").text.strip
    wine.retailer = doc.search("div.block.footer-widget-2 h3").text.strip.downcase
    wine.price = "$8"

    wine

  end

  def self.scrape_sav

    doc = Nokogiri::HTML(open("https://vinepair.com/wine-blog/15-great-supermarket-wines-for-under-15/"))

    merlot = self.new
    merlot.brand = doc.search("h3.float-fix:nth-of-type(4)").text.strip
    merlot.retailer = doc.search("div.block.footer-widget-2 h3").text.strip
    merlot.price = "$11"

    merlot

  end

  def self.scrape_pinot

    doc = Nokogiri::HTML(open("https://vinepair.com/wine-blog/15-great-supermarket-wines-for-under-15/"))

    merlot = self.new
    merlot.brand = doc.search("h3.float-fix:nth-of-type(14)").text.strip
    merlot.retailer = doc.search("div.block.footer-widget-2 h3").text.strip
    merlot.price = "$12"

    merlot

  end
end
