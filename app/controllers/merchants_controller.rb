class MerchantsController < ApplicationController
  # def index
  #   # this (the original response = Faraday.get...) doesn't work for tests because Faraday shuts off external calls
  #   # And all this logic(especially the long form) moves to the facade
  #   # response = Faraday.get("http://localhost:3000/api/v1/merchants")
  #   # and is replaced with this:
  #   @facade = MerchantFacade.new
    
  #   # the long form of this:
  #   # @merchants = JSON.parse(response.body, symbolize_names: true) # <---- this logic also moves to the facade, but then transforms into the service
  #   # e.g.
  #   # json = JSON.parse(response.body, symbolize_names: true)
  #   # @merchants = json[:results] #<---this is what becomes the poros
  # end
  def index
    @facade = MerchantFacade.new
  end

  def show
    @facade = MerchantFacade.new(params[:id])

    # merchant_id = params[:id]
    # merchant_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{merchant_id}")
    # @merchant = JSON.parse(merchant_response.body, symbolize_names: true)
  
    # items_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{merchant_id}/items")
    # @items = JSON.parse(items_response.body, symbolize_names: true)
  end                         
  
end
