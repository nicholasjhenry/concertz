require 'rails_helper'

RSpec.describe "Viewing Artists", type: :feature do
  it "renders a lists of artists" do
    visit "/"

    expect(page).to have_css("#artists")
    expect(page).to have_css("#artists .name", text: "YOUNG RIVAL / WE ARE MONROE")
    expect(page).to have_css("#artists .name", text: "NEON INDIAN")
    expect(page).to have_css("#artists .name", text: "LA FLEUR + OTIS")
  end
end
