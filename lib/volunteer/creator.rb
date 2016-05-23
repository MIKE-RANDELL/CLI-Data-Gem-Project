

class Volunteer::Creator
  attr_accessor :name, :region, :details, :url, :all
  @@all = []

  def initialize(name=nil, region=nil, details=nil, url=nil)
    @name = name
    @region = region
    @details = details
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end
end
