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

=begin  
    def self.find_by_breed(breed_name)
     breed_name.find_all do |breed|
        @@all.include?(breed_name) 
      end
    end
=end

    def self.find_by_breed(breed_name)
      @@all.select {|dog| dog.info.upcase.include?(breed_name.upcase)}
    end
  
  #def self.find_by_breed(breed_name)
    #@@all.collect do |breed_name|
      #if breed_name == "French Bulldog"
        #print results
        #end

      
  
end

