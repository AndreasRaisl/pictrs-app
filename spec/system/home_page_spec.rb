require "rails_helper"

RSpec.describe "Home Page", type: :system do

  it "renders a welcome message" do
    visit root_path
    expect(page).to have_content "Herzlich Willkommen zur umfangreichen Bahnbilder-Galerie"

  end
end