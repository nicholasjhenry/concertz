require 'rails_helper'

RSpec.describe "Viewing Artists", type: :feature do
  it "renders a lists of artists" do
    visit "/"

    expect(page).to have_css("#artists")
    expect(page).to have_css("#artists .name", text: "David Bowie")
    expect(page).to have_css("#artists .name", text: "Robert Smith")
  end
end
