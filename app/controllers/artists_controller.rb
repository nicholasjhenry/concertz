class ArtistsController < ApplicationController
  def index
    catalog = FakeCatalog.new
    @artists = catalog.fetch_artists
  end
end
