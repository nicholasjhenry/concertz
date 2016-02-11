require 'rails_helper'

RSpec.describe "Viewing Artists", type: :feature do
  it "renders a lists of artists" do
    visit "/"

    expect(page).to have_css("#artists")
  end
end
