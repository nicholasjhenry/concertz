require "rails_helper"

RSpec.describe CheapThrillsCatalog do
  it "fetches artists", vcr: { cassette_name: "artists" } do
    artists = subject.fetch_artists

    expect(artists.map(&:name)).to include("YOUNG RIVAL / WE ARE MONROE",
                                           "NEON INDIAN",
                                           "LA FLEUR + OTIS")
  end
end
