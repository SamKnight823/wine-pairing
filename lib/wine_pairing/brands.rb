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
    comparison = []
    merlot_hash = {}
    doc = Nokogiri::HTML(open("https://vinepair.com/articles/10-most-popular-american-merlots/"))

    merlot_hash = {
    :brand => doc.search("h3.float-fix:nth-of-type(2) strong").text.strip,
    :retailer => doc.search("div.block.footer-widget-2 h3").text.strip,
    :price => "$10"
    }
    merlot_hash
    comparison << merlot_hash


    merlot_hash2 = {}
    doc = Nokogiri::HTML(open("https://vinepair.com/articles/10-most-popular-american-merlots/"))
    merlot_hash2 = {
    :brand => doc.search("h3.float-fix:nth-of-type(9) strong").text.strip,
    :retailer => doc.search("div.block.footer-widget-2 h3").text.strip,
    :price => "$25"
    }
    merlot_hash2
    comparison << merlot_hash2

    comparison
  end

  def self.scrape_chardonnay
    comparison = []
    merlot_hash = {}
    doc = Nokogiri::HTML(open("https://vinepair.com/buy-this-booze/10-affordable-chardonnays-that-arent-oak-bombs/"))

    merlot_hash = {
    :brand => doc.search("h3.float-fix:nth-of-type(6) a").text.strip,
    :retailer => doc.search("div.block.footer-widget-2 h3").text.strip,
    :price => "$8"
    }
    merlot_hash
    comparison << merlot_hash


    merlot_hash2 = {}
    doc = Nokogiri::HTML(open("https://vinepair.com/buy-this-booze/10-affordable-chardonnays-that-arent-oak-bombs/"))
    merlot_hash2 = {
    :brand => doc.search("h3.float-fix:nth-of-type(1) a").text.strip,
    :retailer => doc.search("div.block.footer-widget-2 h3").text.strip,
    :price => "$28"
    }
    merlot_hash2
    comparison << merlot_hash2

    comparison
  end


  def self.scrape_sav
    comparison = []
    merlot_hash = {}
    doc = Nokogiri::HTML(open("https://vinepair.com/wine-blog/15-great-supermarket-wines-for-under-15/"))

    merlot_hash = {
    :brand => doc.search("h3.float-fix:nth-of-type(3)").text.strip,
    :retailer => doc.search("div.block.footer-widget-2 h3").text.strip,
    :price => "$11"
    }
    merlot_hash
    comparison << merlot_hash


    merlot_hash2 = {}
    doc = Nokogiri::HTML(open("https://vinepair.com/articles/10-romantically-named-wines-valentines-day/"))
    merlot_hash2 = {
    :brand => doc.search("h3.float-fix:nth-of-type(1)").text.strip,
    :retailer => doc.search("div.block.footer-widget-2 h3").text.strip,
    :price => "$45"
    }
    merlot_hash2
    comparison << merlot_hash2

    comparison
  end

  def self.scrape_pinot
    comparison = []
    merlot_hash = {}
    doc = Nokogiri::HTML(open("https://vinepair.com/wine-blog/15-great-supermarket-wines-for-under-15/"))

    merlot_hash = {
    :brand => doc.search("h3.float-fix:nth-of-type(13)").text.strip,
    :retailer => doc.search("div.block.footer-widget-2 h3").text.strip,
    :price => "$12"
    }
    merlot_hash
    comparison << merlot_hash


    merlot_hash2 = {}
    doc = Nokogiri::HTML(open("https://vinepair.com/articles/10-romantically-named-wines-valentines-day/"))
    merlot_hash2 = {
    :brand => doc.search("h3.float-fix:nth-of-type(2)").text.strip,
    :retailer => doc.search("div.block.footer-widget-2 h3").text.strip,
    :price => "$46"
    }
    merlot_hash2
    comparison << merlot_hash2

    comparison
  end
end
