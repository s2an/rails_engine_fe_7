require 'rails_helper'

describe MerchantService do
  it "returns merchant data" do
    index = MerchantService.new
    expect(index).to be_a Hash
    expect(index[:results]).to be_an Array
    member_data = index[:results].first

    expect(member_data).to have_key :name
    expect(member_data[:name]).to be_a(String)
  end
end