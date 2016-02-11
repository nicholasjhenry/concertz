class ArtistsController < ApplicationController
  def index
    catalog = CheapThrillsCatalog.new
    @artists = catalog.fetch_artists
  end
end
