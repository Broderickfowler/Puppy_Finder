require "puppy_finder/version"
require_relative "Puppy_Finder/cli"
require_relative "Puppy_Finder/breed"
require_relative "Puppy_Finder/scraper"


require "pry"
require "nokogiri"
require "open-uri"

module PuppyFinder
  class Error < StandardError; end
  # Your code goes here...
end
