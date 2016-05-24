class Volunteer::CLI

  def self.run
    user_intro
  end


  def self.user_intro
    puts "Nice to see you human! Here are some of our volunteer opportunities, thanks!"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    full_listing

    input = nil
    until input == 'exit'
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts "OPTIONS: 'list' (to get a specific listing) or 'exit'"
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      input = gets.strip.downcase
      if input == 'list'
        list_prompt
      elsif input == 'exit'
        exit_message
      else
        puts "Not sure what you're looking for, please retype.."
      end
    end
  end

  def self.full_listing
    Volunteer::Opps.scrape_page_maker
    printer
  end

  def self.exit_message
    puts "Thanks for looking! Check back later for updated listings!"
  end

  def self.newline
    puts "\n"
  end

  def self.printer
    all_opps = Volunteer::Creator.all
    all_opps.each_with_index do |obj, index|
      puts "#{index+1}. Name: #{obj.name}"
      newline
      puts "Region: #{obj.region}"
      newline
      puts "Details: #{obj.details}"
      newline
      puts "URL: #{obj.url}"
      newline
    end
  end

  def self.listing_printer(listing_input)
    Volunteer::Opps.scrape_page_maker

    opp = Volunteer::Creator.all_index(listing_input-1)
    puts "Name: #{opp.name}"
    newline
    puts "Region: #{opp.region}"
    newline
    puts "Details: #{opp.details}"
    newline
    puts "URL: #{opp.url}"
    newline
  end

  def self.list_prompt
    puts "What listing would you like to see?"
    listing_input = gets.strip.to_i
    listing_printer(listing_input)
  end
end
















=begin
class Volunteer::CLI

  def call
    list_opps
    menu
    goodbye
  end

  def list_opps
    puts "Today's Volunteer Opportunites:"
    @opps = Volunteer::Opp.today
    @opps.each_with_index do |opp, i|
      puts "#{i+1}. #{opp.name} - #{opp.address} - #{opp.date}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the opportunity, list, or exit"
      input = gets.strip.downcase

      if input.to_i > 0
        the_opp = @opps[input.to_i-1]
        puts "#{the_opp.name} - #{the_opp.address} - #{the_opp.date}"
      elsif input == "list"
        list_opps
      elsif input == "exit"
        goodbye
      else
        puts "Not sure what you want, type list or exit."
      end
    end
  end

  def goodbye
    puts "See you next time!"
  end
end
=end
