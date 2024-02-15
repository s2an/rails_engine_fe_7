class ItemsController < ApplicationController
  def index
    response = Faraday.get("http://localhost:3000/api/v1/items")
    
    @items = JSON.parse(response.body, symbolize_names: true)
  end

  def show
    item_id = params[:id]

    response = Faraday.get("http://localhost:3000/api/v1/items/#{item_id}")
    @item = JSON.parse(response.body, symbolize_names: true)
  end
end