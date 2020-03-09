class PuppyFinder::CLI

  def call
    PuppyFinder::Scraper.scrape_breed 
    binding.pry#Go into the scrapper class and scrape for all the breeds of puppies
    puts "\nWelcome to Puppy Adopation App\n"
    puts "\nWhere you can find select breeds in San Diego\n"

    list_puppies 
    more_info
    thanks
  end

  def list_puppies #
    puts "\nPlease choose you new family member!!\n"
    breed = PuppyFinder::Breed.all
    breed.each.with_index(1) do |breed, index|
      puts "#{index}. #{breed.name} - #{breed.info}"
      puts " "
  end

  def more_info
    input = nil

    while input != "exit"
      puts "Which puppy would you like to know more about? Type list to return to the main list or exit to leave the program."
      input = gets.strip

      if input.to_i> 0
        selected = PuppyFinder::Breed.find_by_index(input.to_i - 1)
        if selected == nil
          puts "Not sure what you meant. Please try again."
        else
          puts " "
          puts "#{selected.name}"
          puts "#{selected.info}"
          puts "#{selected.location}"
          puts " "
        end
      elsif input == "list"
        list_puppies
      else input == "exit"
        puts "Goodbye!"
      end
    end
end
  end

  def thanks
    puts "Thank you for your support in providing a forever home! Happy Adopation"
  end
end
