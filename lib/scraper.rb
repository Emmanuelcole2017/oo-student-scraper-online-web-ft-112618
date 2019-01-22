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
    Nokogiri::HTML(open(index_url))
    # .css(".student-card")
    binding.pry
  end

  def self.scrape_profile_page(profile_url)
    
  end
  
  
  
end

