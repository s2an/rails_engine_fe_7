require "rails_helper"

RSpec.describe MerchantFacade do
  it "exists" do
    json_response = File.read("spec/fixtures/api_v1_merchants.json")
    stub_request(:get, "http://localhost:3000/api/v1/merchants.json")
     .to_return(status: 200, body: json_response)

    #  expect
  end
end