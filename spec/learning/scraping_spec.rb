require "rails_helper"
require 'open-uri'

RSpec.describe "learning to scrape" do
  it "can extract the content for the artists", learning: true do
    doc = Nokogiri::HTML(open("http://cheapthrills.ca/news.html"))
    puts doc.css("table table td:nth-child(2)").map {|element| element.text.strip }
  end
end
