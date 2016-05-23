class Volunteer::Opps

  def self.get_page
    doc = Nokogiri::HTML(open("http://www.gviusa.com/find-a-program/search-results/"))
    binding.pry
  
  end

  def self.scrape_page_index

    self.get_page.search('div.program-item-right left').each do |opp_details|
      opp_details
    end
  end

  def self.scrape_page_maker

  end



end

#class Volunteer::Opps_Creator


#end













=begin
class Volunteer::Opp
  attr_accessor :name, :date, :address, :url
  def self.today
    #I should return a bunch of opps
    #puts <<-DOC.gsub /^\s*/, ''
    #  1. Opportunity 1
    #  2. Opportunity 2
    #DOC
    self.scrape_opps
  end

  def self.scrape_opps
    opps = []

    opps << self.scrape_site
    #go to site, find opportunites
    #extract properties
    #instantiate an opportunity



    opps
  end

  def self.scrape_site
    doc = Nokogiri::HTML(open("http://www.volunteermatch.org/search/index.jsp"))
    binding.pry
  end

end
=end
