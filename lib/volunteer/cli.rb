class Volunteer::CLI
  def self.run
    user_intro
  end

  def self.user_intro
    puts "Nice to see you human! Here are some volunteer opportunities, thanks!"
    puts "\n"
    obj = Volunteer::Opps.scrape_page_maker
    puts "Name: #{obj.name}"
    puts "\n"
    puts "Region: #{obj.region}"
    puts "\n"
    puts "Details: #{obj.details}"
    puts "\n"
    puts "URL: #{obj.url}"
    puts "\n"

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
