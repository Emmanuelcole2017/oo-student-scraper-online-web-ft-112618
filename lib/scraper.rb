require 'open-uri'
require 'pry'

class Scraper

  # Scraper #scrape_index_page is a class method that scrapes
  # the student index page 
  # ('./fixtures/sudent-site/index.html') and returns an 
  # array of hashes in which each hash represents one student
  
  def self.scrape_index_page(index_url)
    # get index_url
    # Nokogiri using open-uri
    # returns [{:name, :location, :profile_url},
    # {:name, :location, :profile}] from Nokogiri
    # using open-URI
    # .css(".student-card")
    studentCards = Nokogiri::HTML(open(index_url)).css(".student-card")
    studentHashes = []
    
    # :name => .css("h4").text
    # :location => .css("p").text
    # :profile_url => .css("a").attribute("href").value
    studentCards.each {|student|
      studentHashes << {name: student.css("h4").text,
                        location: student.css("p").text,
                        profile_url: student.css("a").attribute("href").value}
    }
    studentHashes
    #binding.pry
  end

  # #scrape_profile_page is a class method that scrapes a 
  # student's profile page and returns a hash of attributes
  # describing an individual student
  def self.scrape_profile_page(profile_url)
    Nokogiri::HTML(open(profile_url))
    binding.pry
  end
  
  
  
end

