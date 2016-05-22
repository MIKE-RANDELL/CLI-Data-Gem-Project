class Volunteer::Opp
  attr_accessor :name, :date, :address, :url
  def self.today
    #I should return a bunch of opps
    puts <<-DOC.gsub /^\s*/, ''
      1. Opportunity 1
      2. Opportunity 2
    DOC

    opp_1 = self.new
    opp_1.name = "Opportunity 1"
    opp_1.date = "5/30/2016"
    opp_1.address = "Palm Beach"
    opp_1.url = "www.opp1.com"

    opp_2 = self.new
    opp_2.name = "Opportunity 2"
    opp_2.date = "6/31/2016"
    opp_2.address = "West Palm Beach"
    opp_2.url = "www.opp2.com"

    [opp_1, opp_2]
  end

end
