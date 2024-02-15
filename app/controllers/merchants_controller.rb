class MerchantsController < ApplicationController
  def index
    response = Faraday.get("http://localhost:3000/api/v1/merchants")
    
    @merchants = JSON.parse(response.body, symbolize_names: true)
  end

  def show
    merchant_id = params[:id]
    merchant_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{merchant_id}")
    @merchant = JSON.parse(merchant_response.body, symbolize_names: true)
  
    items_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{merchant_id}/items")
    @items = JSON.parse(items_response.body, symbolize_names: true)
  end
  
end
