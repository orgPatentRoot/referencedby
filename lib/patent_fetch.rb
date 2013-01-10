require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rspec'

load 'patent_scraper.rb'

class PatentFetch
	scrapedpatent = PatentScraper.new
    doc = (scrapedpatent.patentpage).xpath("//body/table")

    rows = doc.xpath("//table//tr[1 <= position() and position() < 200]/td[2]/a/text()")
    #puts rows
    rows.each do |r|
      puts "0" + r.to_s.gsub(/,/,'')
    end
end
