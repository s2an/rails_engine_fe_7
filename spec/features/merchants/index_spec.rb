require "rails_helper"

RSpec.describe "Challenge #3" do
  describe "User Story - Merchants" do
    # As a visitor,
    # When I visit '/merchants'
    # I should see a list of merchants by name
    # and when I click the merchant's name
    # I should be on page '/merchants/:id'
    # And I should see a list of items that merchant sells.

    it "lists all the items a merchant sells" do
      json_response = File.read("spec/fixtures/api_v1_merchants.json")
       stub_request(:get, "http://localhost:3000/api/v1/merchants.json")
        .to_return(status: 200, body: json_response)
# require "pry"; binding.pry
      visit "/merchants"

      expect(current_path).to eq(merchants_path)
      expect(page).to contain(merchant.name)
      expect(page).to have_link(merchant.name)
      
      click_link(merchant.name)
      
      expect(current_path).to eq(merchant_path(merchant))
      expect(page).to contain(merchant.item.name)
    end
  end
end