require "pry"
require "nokogiri"
require "open-uri"


require_relative "puppy_finder/version"
require_relative "Puppy_Finder/cli"
require_relative "Puppy_Finder/breed"
require_relative "Puppy_Finder/scraper"




module PuppyFinder
  class Error < StandardError; end
  # Your code goes here...
end
