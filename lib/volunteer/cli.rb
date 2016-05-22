class Volunteer::CLI

  def call
    puts "Recent Volunteer Opportunites"
    list_opps
    menu
    goodbye
  end

  def list_opps
    #here DOC

    @opps = Volunteer::Opp.today
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the opportunity for more info, list to see the list again, or exit"
      input = gets.strip
      case input
      when "1"
        puts "More info on 1.."
      when "2"
        puts "More info on 2.."
      when 'list'
        list_opps
      else
        puts "Not sure what you want, type list or exit"
      end
    end
  end

  def goodbye
    puts "See you next time!"
  end
end
