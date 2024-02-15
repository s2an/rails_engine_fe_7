RSpec.describe "Challenge #3" do
  describe "User Story - Merchants" do
    # As a visitor,
    # When I visit '/merchants'
    # I should see a list of merchants by name
    # and when I click the merchant's name
    # I should be on page '/merchants/:id'
    # And I should see a list of items that merchant sells.
    it "lists all the items a merchant sells" do

      visit merchants_path

      expect(current_path).to eq(merchants_path)
      expect(page).to contain(merchant.name)
      expect(page).to have_link(merchant.name)
      
      click_link(merchant.name)
      
      expect(current_path).to eq(merchant_path(merchant))
      expect(page).to contain(merchant.item.name)
    end
  end
end