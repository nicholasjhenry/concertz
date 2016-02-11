class FakeCatalog
  def fetch_artists
    [
      Artist.new(name: "YOUNG RIVAL / WE ARE MONROE"),
      Artist.new(name: "NEON INDIAN"),
      Artist.new(name: "LA FLEUR + OTIS")
    ]
  end
end
