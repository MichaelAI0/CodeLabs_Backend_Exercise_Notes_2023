require "open-uri"
require "nokogiri"

require "json"


class Scraper

  URL = "https://www.last.fm/tag/"


  def self.scrape_and_print_music(genre)
    puts "Fetching Hits..."

    doc = Nokogiri::HTML(URI.open("#{URL}#{genre}/tracks"))
    top_hits = doc.css(".chartlist-name a", ".chartlist-artist a" )
    top_hits.each_with_index do |hit, i| 
      puts "#{i+1}. #{hit.text}"

    end
    
    # scraped_music = JSON.parse(doc.text)

  end

  def self.scrape_and_print_music_top(genre)
    puts "Fetching Top Albums..."

    doc = Nokogiri::HTML(URI.open("#{URL}#{genre}/albums"))
    album_artist = doc.css(".resource-list--release-list-item-artist").css("span").css("a") 
    album_name = doc.css(".resource-list--release-list-item-name a")
    # puts album_artist
    # puts album_name
    top_albums = "#{album_name}, #{album_artist}"
    puts top_albums
    # doc.css( ".resource-list--release-list-item-name a" ,".resource-list--release-list-item-artist a")
    # doc.css(".class-of-the-paragraph").css('span').css('a')
    top_albums.each do |album|
      puts album.text
    end
  end

end