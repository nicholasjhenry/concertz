class FakeCatalog
  def fetch_artists
    [
      Artist.new(name: "David Bowie"),
      Artist.new(name: "Robert Smith")
    ]
  end
end
