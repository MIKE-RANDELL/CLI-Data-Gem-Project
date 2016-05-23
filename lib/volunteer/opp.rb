

class Volunteer::Opps

  def self.get_page
    doc = Nokogiri::HTML(open("http://www.gviusa.com/find-a-program/search-results/"))
    doc
  end

  def self.scrape_page_index
    get_page.css('.pditem')
  end

  def self.scrape_page_maker
    scrape_page_index.each do |opp|
      creation = Volunteer::Creator.new
      creation.name = opp.css('div.program-item-info h2').text.strip
      creation.region = opp.css('div.program-item-region').text.strip
      creation.details = opp.css('div.program-item-details').text.strip
      creation.url = opp.search('a').attr('href').value.strip
      creation.all << self
    end
  end
end















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
