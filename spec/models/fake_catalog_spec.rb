require "rails_helper"

RSpec.describe FakeCatalog do
  it "fetches artists" do
    artists = subject.fetch_artists

    expect(artists.map(&:name)).to include("YOUNG RIVAL / WE ARE MONROE",
                                           "NEON INDIAN",
                                           "LA FLEUR + OTIS")
  end
end
