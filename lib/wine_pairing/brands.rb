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
    
    doc = Nokogiri::HTML(open("https://www.amazon.com/s/ref=sr_1_1_hso_sc_smartcategory_2?rh=n%3A6503737011%2Ck%3Amerlot&keywords=merlot&ie=UTF8&qid=1495386402&sr=8-1-acs"))

    merlot = self.new
    merlot.brand = doc.search("li#result_3.s-result-item h2.a-size-base").text.strip
    merlot.retailer = doc.search("span.nav-logo-base").text.strip
    merlot.price = doc.search("li#result_3.s-result-item div.a-row:nth-of-type(4) div.a-row").text.strip

    merlot
  end

  def self.scrape_chardonnay
    
    doc = Nokogiri::HTML(open("https://www.amazon.com/Black-Oak-California-Chardonnay-White/dp/B01DQ0T7YA/ref=sr_1_4?ie=UTF8&qid=1495395408&sr=8-4&keywords=chardonnay"))

    merlot = self.new
    merlot.brand = doc.search("h1.a-size-large span.a-size-large").text.strip
    merlot.retailer = doc.search("span.nav-logo-base").text.strip
    merlot.price = doc.search("div.feature div.a-row span.a-size-large").text.strip

    merlot
  end

  def self.scrape_sav
    
    doc = Nokogiri::HTML(open("https://www.amazon.com/Dark-Horse-California-Sauvignon-Blanc/dp/B01DTHWEPO/ref=sr_1_7_s_it?s=grocery&ie=UTF8&qid=1495388657&sr=1-7&keywords=sauvignon+blanc"))

    merlot = self.new
    merlot.brand = doc.search("h1.a-size-large span.a-size-large").text.strip
    merlot.retailer = doc.search("span.nav-logo-base").text.strip
    merlot.price = doc.search("div.feature div.a-row span.a-size-large").text.strip

    merlot
  end

  def self.scrape_pinot
    
    doc = Nokogiri::HTML(open("https://www.amazon.com/Barefoot-Cellars-California-Pinot-Wine/dp/B01ATVOWGW/ref=sr_1_2?s=wine&ie=UTF8&qid=1495388443&sr=1-2&keywords=pinot+noir+wine"))

    merlot = self.new
    merlot.brand = doc.search("h1.a-size-large span.a-size-large").text.strip
    merlot.retailer = doc.search("span.nav-logo-base").text.strip
    merlot.price = doc.search("div.feature div.a-row span.a-size-large").text.strip

    merlot
  end
end