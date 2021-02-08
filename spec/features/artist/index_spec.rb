require 'rails_helper'

RSpec.describe "Aritst index page", type: :feature do
  it "When I visit index page" do
    talking_heads = Artist.create!(name: 'Talking Heads')
    visit '/artists'

    expect(page).to have_content(talking_heads.name)
  end
end
