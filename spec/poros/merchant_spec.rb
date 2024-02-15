require "rails_helper"

RSpec.describe Merchant do
  it "exists" do
    attributes = { name: "Black Market, LLC" }

    merchant = Merchant.new(attributes)

    expect(merchant).to be_a Merchant
    expect(merchant.name).to eq("Black Market, LLC")
  end
end