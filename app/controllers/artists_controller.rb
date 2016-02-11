class ArtistsController < ApplicationController
  def index
    catalog = Catalog.new
    @artists = catalog.fetch_artists
  end
end
