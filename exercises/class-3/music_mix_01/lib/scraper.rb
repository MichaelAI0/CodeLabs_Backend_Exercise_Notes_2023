require "open-uri"
require "nokogiri"

require "json"


class Scraper

  URL = "https://www.last.fm/tag/"

  def self.scrape_and_print_music(genre)
    puts "Fetching Hits..."

    doc = Nokogiri::HTML(URI.open("#{URL}#{genre}/tracks"))
    top_hits = doc.css(".chartlist-name").css("a") 
    top_hits.each do |hit| 
      puts hit.text

    end
    
    # scraped_music = JSON.parse(doc.text)

  end


end