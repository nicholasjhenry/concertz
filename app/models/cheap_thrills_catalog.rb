require "open-uri"

class CheapThrillsCatalog
  def fetch_artists
    names = extract_names_from_web_page
    build_collection_of_artists(names)
  end

  private

  def build_collection_of_artists(names)
    names.map { |name| Artist.new(name: name) }
  end

  def extract_names_from_web_page
    doc = Nokogiri::HTML(open("http://cheapthrills.ca/news.html"))

    doc.css(artists_selector)
       .drop(1) # skip the first item which is the header
       .map { |element| element.text.strip }
  end

  def artists_selector
    "table table td:nth-child(2)"
  end
end
