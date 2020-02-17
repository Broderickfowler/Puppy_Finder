class PuppyFinder::Scraper

def self.scrape_breed
  page = Nokogiri::HTML(open("https://puppiesforsalesandiego.com/"))
  #binding.pry


  page.css(".pd_homepage_recent_holder").each do |puppy|
  name = puppy.css(".pd_homepage_recent_name_link").text.strip
  info = puppy.css(".pd_homepage_recent_bottom").text.strip
  location = puppy.css(".pd_store_name").text
  PuppyFinder::Breed.new(name, info, location)
    end
  end
end

















=begin
  breed = doc.css("ul.rows li .hdrlnk")

  breed.each do |p|
  name = p.text
  PuppyFinder::Breed.new(name)
    end
  end

  def self.scrape_puppy(puppy)
    PuppyFinder::Puppy.new("Brooklyn", puppy)
    PuppyFinder::Puppy.new("Queens", puppy)
  end
end
=end
