class PuppyFinder::Breed

@@all = []
attr_accessor :name, :info, :location

def initialize(name, info, location)
  @name = name
  @info = info
  @location = location
  save
end

def self.all
  PuppyFinder::Scraper.scrape_breed if @@all.empty? # Use scraper if @@all is empty
  @@all # class ver
end

def save
  @@all << self
  end
  
  def self.find_by_index(index)
    @@all[index]
  end
end
