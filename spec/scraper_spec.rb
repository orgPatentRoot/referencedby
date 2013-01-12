require 'spec_helper'

describe GoogleScraper do
	it "instantial itself" do
		pf = PatentScraper.new
	end
end

describe USPTOScraper do
  it "scrapes a uspto citation count" do
    usp = USPTOScraper.new(5900754)
    usp.count.should == 9
  end
end
